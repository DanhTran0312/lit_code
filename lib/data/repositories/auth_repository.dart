import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

enum AuthStatus {
  unknown,
  authenticated,
  unauthenticated,
  loading,
  authError,
}

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;
  final _streamController = StreamController<AuthStatus>();

  Stream<AuthStatus> get authStatus async* {
    try {
      _streamController.add(AuthStatus.loading);
      await for (final user in _firebaseAuth.authStateChanges()) {
        if (user == null) {
          _streamController.add(AuthStatus.unauthenticated);
        } else {
          _streamController.add(AuthStatus.authenticated);
        }
      }
    } catch (e) {
      _streamController
        ..add(AuthStatus.authError)
        ..addError(e);
    }
    yield* _streamController.stream;
  }

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      _streamController.add(AuthStatus.loading);
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _streamController.add(AuthStatus.authenticated);
    } on FirebaseAuthException catch (e) {
      _streamController.add(AuthStatus.authError);
      if (e.code == 'weak-password') {
        throw Exception('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('The account already exists for that email.');
      }
    } catch (e) {
      throw Exception('Failed to sign up with Email & Password: $e');
    }
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      _streamController.add(AuthStatus.loading);
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _streamController.add(AuthStatus.authenticated);
    } catch (e) {
      _streamController.add(AuthStatus.authError);
      throw Exception('Failed to sign in with Email & Password');
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      _streamController.add(AuthStatus.loading);
      final googleUser = await GoogleSignIn(scopes: ['email']).signIn();
      final googleAuth = await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
      _streamController.add(AuthStatus.authenticated);
    } catch (e) {
      _streamController.add(AuthStatus.authError);
      throw Exception('Failed to sign in with Google');
    }
  }

  Future<bool> isAuthenticated() async {
    try {
      final user = _firebaseAuth.currentUser;
      return user != null;
    } on Exception catch (e) {
      throw Exception('Failed to check authentication: $e');
    }
  }

  User? get currentUser => _firebaseAuth.currentUser;

  Future<void> signOut() async {
    try {
      _streamController.add(AuthStatus.loading);
      await _firebaseAuth.signOut();
      _streamController.add(AuthStatus.unauthenticated);
    } on Exception catch (e) {
      _streamController.add(AuthStatus.authError);
      throw Exception('Failed to sign out: $e');
    }
  }

  void dispose() {
    _streamController.close();
  }
}

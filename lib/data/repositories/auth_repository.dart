import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lit_code/data/models/models.dart';

class AuthRepository {
  final _firebaseAuth = firebase_auth.FirebaseAuth.instance;

  Future<void> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
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
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      throw Exception('Failed to sign in with Email & Password');
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      final googleUser = await GoogleSignIn(scopes: ['email']).signIn();
      final googleAuth = await googleUser!.authentication;
      final credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _firebaseAuth.signInWithCredential(credential);
    } catch (e) {
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

  Future<User> get currentUser async {
    final firebaseUser = _firebaseAuth.currentUser;
    final user = firebaseUser == null ? User.empty : firebaseUser.toUser;
    return user;
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } on Exception catch (e) {
      throw Exception('Failed to sign out: $e');
    }
  }

  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } on Exception catch (e) {
      throw Exception('Failed to send password reset email: $e');
    }
  }

  Future<void> deleteUser() async {
    try {
      await _firebaseAuth.currentUser!.delete();
    } on Exception catch (e) {
      throw Exception('Failed to delete user: $e');
    }
  }
}

extension on firebase_auth.User {
  User get toUser {
    return User(
      id: uid,
      email: email,
      name: displayName,
      photoUrl: photoURL,
    );
  }
}

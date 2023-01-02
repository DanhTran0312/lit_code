import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/auth_repository.dart';
import 'package:lit_code/data/repositories/user_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authRepository, required this.userRepository})
      : super(const Unknown()) {
    on<SignInRequested>((event, emit) async {
      emit(const Loading());
      try {
        await authRepository.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(
          Authenticated(
            status: AuthStatus.authenticated,
            user: await _tryGetUser(),
          ),
        );
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(
          const Unauthenticated(
            status: AuthStatus.unauthenticated,
          ),
        );
      }
    });
    on<AuthCheckRequested>((event, emit) async {
      emit(const Loading());
      try {
        final isAuthenticated = await authRepository.isAuthenticated();
        if (isAuthenticated) {
          emit(
            Authenticated(
              status: AuthStatus.authenticated,
              user: await userRepository.getUser(
                authRepository.currentUser!.uid,
              ),
            ),
          );
        } else {
          emit(
            const Unauthenticated(
              status: AuthStatus.unauthenticated,
            ),
          );
        }
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(
          const Unauthenticated(
            status: AuthStatus.unauthenticated,
          ),
        );
      }
    });
    on<SignUpRequested>((event, emit) async {
      emit(const Loading());
      try {
        await authRepository.signUpWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(
          Authenticated(
            user: await _tryGetUser(),
            status: AuthStatus.authenticated,
          ),
        );
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(
          const Unauthenticated(
            status: AuthStatus.unauthenticated,
          ),
        );
      }
    });
    on<SignOutRequested>((event, emit) async {
      emit(const Loading());
      try {
        await authRepository.signOut();
        emit(
          const Unauthenticated(
            status: AuthStatus.unauthenticated,
          ),
        );
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(
          Authenticated(
            user: await _tryGetUser(),
            status: AuthStatus.authenticated,
          ),
        );
      }
    });
    on<GoogleSignInRequested>((event, emit) async {
      emit(const Loading());
      try {
        await authRepository.signInWithGoogle();
        emit(
          Authenticated(
            user: await _tryGetUser(),
            status: AuthStatus.authenticated,
          ),
        );
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(
          const Unauthenticated(
            status: AuthStatus.unauthenticated,
          ),
        );
      }
    });

    _authStatusSubscription = authRepository.authStatus.listen((status) {
      add(AuthStatusChanged(status));
    });

    on<AuthStatusChanged>((event, emit) async {
      if (event.status == AuthStatus.authenticated) {
        emit(
          Authenticated(
            user: await _tryGetUser(),
            status: AuthStatus.authenticated,
          ),
        );
      } else if (event.status == AuthStatus.unauthenticated) {
        emit(
          const Unauthenticated(
            status: AuthStatus.unauthenticated,
          ),
        );
      } else if (event.status == AuthStatus.authError) {
        emit(
          const AuthError(
            'An error occured while authenticating.',
          ),
        );
      } else if (event.status == AuthStatus.unknown) {
        emit(const Unknown());
      }
    });
  }

  final AuthRepository authRepository;
  final UserRepository userRepository;
  late StreamSubscription<AuthStatus> _authStatusSubscription;

  @override
  Future<void> close() {
    _authStatusSubscription.cancel();
    authRepository.dispose();
    return super.close();
  }

  Future<User?> _tryGetUser() async {
    try {
      return await userRepository.getUser(authRepository.currentUser!.uid);
    } catch (e) {
      return null;
    }
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lit_code/data/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authRepository}) : super(const Unknown()) {
    on<SignInRequested>((event, emit) async {
      emit(const Loading());
      try {
        await authRepository.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(const Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(const Unauthenticated());
      }
    });
    on<AuthCheckRequested>((event, emit) async {
      emit(const Loading());
      try {
        final isAuthenticated = await authRepository.isAuthenticated();
        if (isAuthenticated) {
          emit(const Authenticated());
        } else {
          emit(const Unauthenticated());
        }
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(const Unauthenticated());
      }
    });
    on<SignUpRequested>((event, emit) async {
      emit(const Loading());
      try {
        await authRepository.signUpWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(const Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(const Unauthenticated());
      }
    });
    on<SignOutRequested>((event, emit) async {
      emit(const Loading());
      try {
        await authRepository.signOut();
        emit(const Unauthenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(const Authenticated());
      }
    });
    on<GoogleSignInRequested>((event, emit) async {
      emit(const Loading());
      try {
        await authRepository.signInWithGoogle();
        emit(const Authenticated());
      } catch (e) {
        emit(AuthError(e.toString()));
        emit(const Unauthenticated());
      }
    });
  }

  final AuthRepository authRepository;
}

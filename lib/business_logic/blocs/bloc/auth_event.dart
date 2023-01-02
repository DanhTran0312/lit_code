part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = SignInRequested;
  const factory AuthEvent.signUpRequested({
    required String email,
    required String password,
  }) = SignUpRequested;
  const factory AuthEvent.signOutRequested() = SignOutRequested;
  const factory AuthEvent.googleSignInRequested() = GoogleSignInRequested;
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.authStatusChanged(AuthStatus status) =
      AuthStatusChanged;
}

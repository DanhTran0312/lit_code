part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.loading() = Loading;
  const factory AuthState.authenticated({
    required User? user,
  }) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.authError(String error) = AuthError;
  const factory AuthState.unknown() = Unknown;
}

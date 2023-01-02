part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.loading() = Loading;
  const factory AuthState.authenticated({
    required User? user,
    required AuthStatus status,
  }) = Authenticated;
  const factory AuthState.unauthenticated({
    required AuthStatus status,
  }) = Unauthenticated;
  const factory AuthState.authError(String error) = AuthError;
  const factory AuthState.unknown() = Unknown;

  AuthStatus get status {
    return when(
      loading: () => AuthStatus.loading,
      authenticated: (_, status) => status,
      unauthenticated: (status) => status,
      authError: (_) => AuthStatus.authError,
      unknown: () => AuthStatus.unknown,
    );
  }
}

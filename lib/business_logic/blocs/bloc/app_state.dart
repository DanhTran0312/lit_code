part of 'app_bloc.dart';

// This code is for the state of the app when the user is authenticated.
// The user object comes from the Firebase auth package.
// The status is set to authenticated by default.

@freezed
class AppState with _$AppState {
  const factory AppState.authenticated({
    required User user,
    @Default(AppStatus.authenticated) AppStatus status,
  }) = Authenticated;
  const factory AppState.unauthenticated({
    @Default(AppStatus.unauthenticated) AppStatus status,
  }) = Unauthenticated;
}

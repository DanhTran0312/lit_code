part of 'app_bloc.dart';

/// This event is emitted when the user logs out of the application.
/// The event is emitted by the [AppBloc].
@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.appLogoutRequested() = AppLogoutRequested;
  const factory AppEvent.appUserChanged(User user) = AppUserChanged;
}

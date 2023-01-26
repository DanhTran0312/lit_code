part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required Settings settings,
    required SettingStatus status,
  }) = _SettingsState;

  factory SettingsState.initial() => const SettingsState(
        settings: Settings(),
        status: SettingStatus.initial,
      );
}

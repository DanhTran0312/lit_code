part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.updateSettings({
    required Settings settings,
  }) = UpdateSettings;
  const factory SettingsEvent.intializeSettings() = InitializeSettings;
  const factory SettingsEvent.difficultyChanged({
    required List<Difficulty> difficulty,
  }) = DifficultyChanged;
  const factory SettingsEvent.themeChanged({
    required ThemeMode themeMode,
  }) = ThemeChanged;
  const factory SettingsEvent.categoryChanged({
    required List<Category> category,
  }) = CategoryChanged;
}

part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.categoryChanged({
    required List<Category> category,
  }) = CategoryChanged;

  const factory SettingsEvent.difficultyChanged({
    required List<Difficulty> difficulty,
  }) = DifficultyChanged;

  const factory SettingsEvent.goalDateChanged({
    required int goalDate,
  }) = GoalDateChanged;

  const factory SettingsEvent.intializeSettings() = InitializeSettings;

  const factory SettingsEvent.signOutRequested() = SignOutRequested;

  const factory SettingsEvent.themeChanged({
    required ThemeMode themeMode,
  }) = ThemeChanged;

  const factory SettingsEvent.updateSettings({
    required Settings settings,
  }) = UpdateSettings;
}

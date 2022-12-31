part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  factory ThemeState.fromJson(Map<String, dynamic> json) =>
      _$ThemeStateFromJson(json);
  const factory ThemeState.dark() = _Dark;
  const factory ThemeState.light() = _Light;
  const ThemeState._();
  int get selectedIndex => maybeMap(
        dark: (_) => 1,
        orElse: () => 0,
      );
}

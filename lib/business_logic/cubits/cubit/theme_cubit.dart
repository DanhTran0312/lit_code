import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';
part 'theme_cubit.g.dart';
part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> with HydratedMixin {
  ThemeCubit() : super(const ThemeState.light());
  bool get isDark => state.maybeMap(dark: (_) => true, orElse: () => false);

  void toggleTheme() {
    emit(
      state.maybeMap(
        dark: (_) => const ThemeState.light(),
        orElse: () => const ThemeState.dark(),
      ),
    );
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return state.toJson();
  }
}

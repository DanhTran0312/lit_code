import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/settings.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(SettingsState.initial()) {
    on<InitializeSettings>(_onInitializeSettings);
    on<UpdateSettings>(_onUpdateSettings);
    on<DifficultyChanged>(_onDifficultyChanged);
    on<ThemeChanged>(_onThemeChanged);
    on<CategoryChanged>(_onCategoryChanged);
    on<SignOutRequested>(_onSignOutRequested);
  }

  Future<void> _onSignOutRequested(
    SignOutRequested event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(status: SettingStatus.loading));
    emit(
      state.copyWith(
        settings: const Settings(),
        status: SettingStatus.initial,
      ),
    );
  }

  FutureOr<void> _onInitializeSettings(
    InitializeSettings event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(status: SettingStatus.loading));
    await _userRepository.getUserSettings().then((settings) {
      emit(
        state.copyWith(
          settings: settings,
          status: SettingStatus.success,
        ),
      );
    });
  }

  FutureOr<void> _onUpdateSettings(
    UpdateSettings event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(status: SettingStatus.loading));
    await _userRepository.updateUserSettings(event.settings).then((_) {
      emit(
        state.copyWith(
          settings: event.settings,
          status: SettingStatus.success,
        ),
      );
    });
  }

  FutureOr<void> _onDifficultyChanged(
    DifficultyChanged event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(status: SettingStatus.loading));
    final settings = state.settings.copyWith(difficulties: event.difficulty);
    await _userRepository.updateUserSettings(settings).then((_) {
      emit(
        state.copyWith(
          settings: settings,
          status: SettingStatus.success,
        ),
      );
    });
  }

  FutureOr<void> _onThemeChanged(
    ThemeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(status: SettingStatus.loading));
    final settings = state.settings.copyWith(themeMode: event.themeMode);
    await _userRepository.updateUserSettings(settings).then((_) {
      emit(
        state.copyWith(
          settings: settings,
          status: SettingStatus.success,
        ),
      );
    });
  }

  FutureOr<void> _onCategoryChanged(
    CategoryChanged event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(status: SettingStatus.loading));
    final settings = state.settings.copyWith(categories: event.category);
    await _userRepository.updateUserSettings(settings).then((_) {
      emit(
        state.copyWith(
          settings: settings,
          status: SettingStatus.success,
        ),
      );
    });
  }

  void resetSettings() {
    add(const InitializeSettings());
  }

  final UserRepository _userRepository;
}

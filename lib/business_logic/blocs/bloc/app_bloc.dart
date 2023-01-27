import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/business_logic/blocs/bloc/settings_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AuthRepository authRepository,
    required UserRepository userRepository,
    required StatisticsBloc statisticsBloc,
    required SettingsBloc settingsBloc,
  })  : _authRepository = authRepository,
        _userRepository = userRepository,
        _statisticsBloc = statisticsBloc,
        _settingsBloc = settingsBloc,
        super(
          authRepository.currentUser.isNotEmpty
              ? AppState.authenticated(
                  user: authRepository.currentUser,
                )
              : const AppState.unauthenticated(),
        ) {
    /// Listens to the user stream from the [AuthRepository] and informs
    /// the [AppBloc] whenever the user changes.
    ///
    /// When the user changes, the [AppBloc] will update its state to
    /// reflect the new user.
    ///
    /// If the user logs out, the [AppBloc] will update its state to
    /// reflect the logged out state.

    on<AppUserChanged>(_onUserChanged);

    on<AppLogoutRequested>(_onLogoutRequested);

    _userSubscription = _authRepository.userStream.listen(
      (user) => add(AppUserChanged(user)),
    );
  }

  /// An event is emitted when the user is changed.
  ///
  /// If the user is not empty, the state is set to authenticated.
  /// Otherwise, the state is set to unauthenticated.
  void _onUserChanged(AppUserChanged event, Emitter<AppState> emit) {
    emit(
      event.user.isNotEmpty
          ? AppState.authenticated(
              user: event.user,
            )
          : const AppState.unauthenticated(),
    );
  }

  // This function is called when the user requests to log out.
  // It calls the signOut function of the _authRepository.
  Future<void> _onLogoutRequested(
    AppLogoutRequested event,
    Emitter<AppState> emit,
  ) async {
    _statisticsBloc.add(const ResetStatistics());
    _settingsBloc.add(const SignOutRequested());
    await _authRepository.signOut();
    await _userRepository.signOut();
  }

  final AuthRepository _authRepository;
  final UserRepository _userRepository;
  final StatisticsBloc _statisticsBloc;
  final SettingsBloc _settingsBloc;

  late final StreamSubscription<User> _userSubscription;

  // This code closes the StreamSubscription when the Bloc is closed.

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}

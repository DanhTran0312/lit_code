import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/auth_repository.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
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

    _userSubscription = _authRepository.user.listen(
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
    await _authRepository.signOut();
  }

  final AuthRepository _authRepository;

  late final StreamSubscription<User> _userSubscription;

  // This code closes the StreamSubscription when the Bloc is closed.

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
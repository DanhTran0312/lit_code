import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/business_logic/cubits/cubit/bottom_nav_bar_cubit.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/auth_repository.dart';
import 'package:lit_code/data/repositories/user_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.authRepository, required this.userRepository})
      : super(const Unknown()) {
    on<SignInRequested>((event, emit) async {
      await _onSignInRequested(emit, event);
    });
    on<AuthCheckRequested>((event, emit) async {
      await _onAuthCheckRequested(emit);
    });
    on<SignUpRequested>((event, emit) async {
      await _onSignUpRequested(emit, event);
    });
    on<SignOutRequested>((event, emit) async {
      await _onSignOutRequested(emit, event);
    });
    on<GoogleSignInRequested>((event, emit) async {
      await _onGoogleSignInRequested(emit);
    });
  }

  Future<void> _onGoogleSignInRequested(Emitter<AuthState> emit) async {
    emit(const Loading());
    try {
      await authRepository.signInWithGoogle();
      final user = await _tryGetUser();
      await _trySaveUser(user);
      emit(
        Authenticated(
          user: user,
        ),
      );
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(
        const Unauthenticated(),
      );
    }
  }

  Future<void> _onSignOutRequested(
    Emitter<AuthState> emit,
    SignOutRequested event,
  ) async {
    emit(const Loading());
    try {
      BlocProvider.of<BottomNavBarCubit>(event.context).reset();
      await userRepository.deleteUser();
      await authRepository.signOut();
      emit(const Unauthenticated());
    } catch (e) {
      emit(AuthError(e.toString()));
      final user = await _tryGetUser();
      emit(
        Authenticated(
          user: user,
        ),
      );
    }
  }

  Future<void> _onSignUpRequested(
    Emitter<AuthState> emit,
    SignUpRequested event,
  ) async {
    emit(const Loading());
    try {
      await authRepository.signUpWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      final user = await _tryGetUser();
      await _trySaveUser(user);
      emit(
        Authenticated(
          user: user,
        ),
      );
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(
        const Unauthenticated(),
      );
    }
  }

  Future<void> _onAuthCheckRequested(Emitter<AuthState> emit) async {
    emit(const Loading());
    try {
      final user = await userRepository.getUser();
      if (user.isNotEmpty) {
        final user = await _tryGetUser();
        await _trySaveUser(user);
        emit(
          Authenticated(
            user: user,
          ),
        );
      } else {
        emit(
          const Unauthenticated(),
        );
      }
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(
        const Unauthenticated(),
      );
    }
  }

  Future<void> _onSignInRequested(
    Emitter<AuthState> emit,
    SignInRequested event,
  ) async {
    emit(const Loading());
    try {
      await authRepository.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      final user = await _tryGetUser();
      await _trySaveUser(user);
      emit(
        Authenticated(
          user: user,
        ),
      );
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(
        const Unauthenticated(),
      );
    }
  }

  final AuthRepository authRepository;
  final UserRepository userRepository;

  Future<User?> _tryGetUser() async {
    try {
      final cachedUser = await userRepository.getUser();
      if (cachedUser.isNotEmpty) {
        return cachedUser;
      }
      return await authRepository.currentUser;
    } catch (e) {
      return null;
    }
  }

  Future<void> _trySaveUser(User? user) async {
    try {
      await userRepository.saveUser(user!);
    } catch (e) {
      throw Exception('Error while saving user: $e');
    }
  }
}

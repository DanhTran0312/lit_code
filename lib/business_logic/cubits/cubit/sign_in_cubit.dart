import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

class SignInCubit extends Cubit<SignInState> {
  // This code is used to initialize the SignInCubit's state.
  // It takes a required parameter, _authRepository.
  // It returns a SignInState object.
  // The SignInState object is assigned to the state property of the SignInCubit object.
  SignInCubit({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SignInState());

  final AuthRepository _authRepository;

  /// Updates the [email]
  ///
  /// Emits a copy of the current state with the new [email].
  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([email, state.password]),
      ),
    );
  }

  // When the password changes, we need to check if it is valid.
  // If it is valid, we need to check if the email and password are valid.
  // If they are valid, we need to update the status to FormzStatus.valid.
  // Otherwise, we need to update the status to FormzStatus.invalid.
  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([state.email, password]),
      ),
    );
  }

  // This function takes the current email and password and attempts to log in
  // using them. If the login is successful, it emits a state with the status
  // set to FormzStatus.submissionSuccess. Otherwise, it emits a state with the
  // status set to FormzStatus.submissionFailure.
  Future<void> signInWithEmailAndPassword() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _authRepository.signInWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on LogInWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessages: e.message,
          status: FormzStatus.submissionFailure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }

  /// Sign in with Google.
  ///
  /// Throws [LogInWithGoogleFailure] if an exception occurs.
  Future<void> signInWithGoogle() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      await _authRepository.signInWithGoogle();
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on LogInWithGoogleFailure catch (e) {
      emit(
        state.copyWith(
          errorMessages: e.message,
          status: FormzStatus.submissionFailure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}

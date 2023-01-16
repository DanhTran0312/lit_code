part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(Password.pure()) Password confirmPassword,
    @Default(FormzStatus.pure) FormzStatus status,
    String? errorMessages,
  }) = _SignUpState;
}

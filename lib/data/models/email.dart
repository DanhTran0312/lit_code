import 'package:email_validator/email_validator.dart';
import 'package:formz/formz.dart';
import 'package:lit_code/constants/constants.dart';

class Email extends FormzInput<String, EmailValidationErrors> {
  const Email.pure() : super.pure('');

  const Email.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationErrors? validator(String value) {
    if (value.isEmpty) {
      return EmailValidationErrors.empty;
    } else if (!EmailValidator.validate(value)) {
      return EmailValidationErrors.invalid;
    }
    return null;
  }
}

import 'package:formz/formz.dart';
import 'package:lit_code/constants/constants.dart';

class Password extends FormzInput<String, PasswordValidationErrors> {
  const Password.pure() : super.pure('');

  const Password.dirty([super.value = '']) : super.dirty();

  static const String upperCase = '[A-Z]';
  static const String lowerCase = '[a-z]';
  static const String number = '[0-9]';
  static const String specialCharacter = r'[!@#\$%\^&\*]';

  @override
  PasswordValidationErrors? validator(String value) {
    if (value.isEmpty) {
      return PasswordValidationErrors.empty;
    }

    if (value.length < 8) {
      return PasswordValidationErrors.tooShort;
    }

    if (value.length > 32) {
      return PasswordValidationErrors.tooLong;
    }

    if (!value.contains(RegExp(upperCase))) {
      return PasswordValidationErrors.noUppercase;
    }

    if (!value.contains(RegExp(lowerCase))) {
      return PasswordValidationErrors.noLowercase;
    }

    if (!value.contains(RegExp(number))) {
      return PasswordValidationErrors.noNumber;
    }

    if (!value.contains(RegExp(specialCharacter))) {
      return PasswordValidationErrors.noSpecialCharacter;
    }

    return null;
  }
}

import 'package:e_learning_v2/generated/l10n.dart';

class AppValidators {
  //? Validates that the name is not empty
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return S.current.nameRequired;
    }
    return null;
  }

  //? Validates the email format using regex
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return S.current.emailRequired;
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return S.current.emailInvalid;
    }
    return null;
  }

  //? Validates the password length (min 6 characters)
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.passwordRequired;
    }
    if (value.length < 6) {
      return S.current.passwordLength;
    }
    return null;
  }

  //? Validates that the confirm password matches the password
  static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty) {
      return S.current.passwordRequired;
    }
    if (value != password) {
      return S.current.passwordMismatch;
    }
    return null;
  }
}

part of 'custom_text_field.dart';

bool _checkIsValidEmail(String value) {
  final emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegex.hasMatch(value);
}

PasswordStrength _calcPasswordStrength(String password) {
  if (password.isEmpty) return PasswordStrength.none;

  int score = 0;

  //! Length >= 8
  if (password.length >= 8) score++;

  //! Has upper + lower
  if (RegExp(r'(?=.*[A-Z])(?=.*[a-z])').hasMatch(password)) score++;

  //! Has digit
  if (RegExp(r'\d').hasMatch(password)) score++;

  //! Has special character
  if (RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password)) score++;

  if (score <= 1) return PasswordStrength.weak;
  if (score <= 3) return PasswordStrength.medium;
  return PasswordStrength.strong;
}

Color _strengthColor(BuildContext context, PasswordStrength strength) {
  switch (strength) {
    case PasswordStrength.weak:
      return Colors.redAccent;
    case PasswordStrength.medium:
      return Colors.orangeAccent;
    case PasswordStrength.strong:
      return Colors.green;
    default:
      return Colors.grey;
  }
}

String _strengthText(PasswordStrength strength) {
  switch (strength) {
    case PasswordStrength.weak:
      return S.current.passwordStrengthWeak;
    case PasswordStrength.medium:
      return S.current.passwordStrengthMedium;
    case PasswordStrength.strong:
      return S.current.passwordStrengthStrong;
    default:
      return '';
  }
}

double _strengthValue(PasswordStrength strength) {
  switch (strength) {
    case PasswordStrength.weak:
      return 0.3;
    case PasswordStrength.medium:
      return 0.6;
    case PasswordStrength.strong:
      return 1.0;
    default:
      return 0;
  }
}

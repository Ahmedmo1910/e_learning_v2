import 'failures.dart';
import 'package:e_learning_v2/generated/l10n.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

class CustomException {
  static Failure map(dynamic error) {
    final s = S.current;

    if (error is supabase.AuthException) {
      final msg = error.message.toLowerCase();
      final code = error.code?.toLowerCase();

      if (msg.contains('invalid login credentials')) {
        return InvalidCredentialsFailure(message: s.invalidCredentials);
      }

      if (msg.contains('already registered') ||
          msg.contains('user already exists')) {
        return EmailAlreadyInUseFailure(message: s.emailInUse);
      }

      if (code == 'email_not_confirmed') {
        return EmailNotConfirmedFailure(message: s.emailNotConfirmed);
      }

      if (msg.contains('invalid token') ||
          msg.contains('token expired') ||
          msg.contains('otp') ||
          msg.contains('token has expired or is invalid')) {
        return InvalidOtpFailure(message: s.invalidOtp);
      }

      if (code == 'over_email_send_rate_limit' ||
          msg.contains('rate limit exceeded')) {
        return TooManyRequestsFailure(message: s.rateLimitExceeded);
      }

      if (msg.contains('network')) {
        return NetworkFailure(message: s.networkError);
      }

      return UnexpectedFailure(message: error.message);
    }

    if (error is supabase.PostgrestException) {
      return ServerFailure(message: s.serverError);
    }

    return UnexpectedFailure(message: s.unexpectedError);
  }
}

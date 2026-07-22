// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(name) => "Welcome back, Coach ${name}!";

  static String m1(email) => "We\'ve sent a 6-digit code to ${email}";

  static String m2(seconds) => "Resend in ${seconds}s";

  static String m3(name) => "Welcome back, ${name}!";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "alreadyHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Already have an account?",
    ),
    "analytics": MessageLookupByLibrary.simpleMessage("Performance Analytics"),
    "analyticsDesc": MessageLookupByLibrary.simpleMessage(
      "Track your ratings, feedback, and sales",
    ),
    "appTitle": MessageLookupByLibrary.simpleMessage("E-Learning App"),
    "codeHint": MessageLookupByLibrary.simpleMessage("Enter 6-digit code"),
    "codeLabel": MessageLookupByLibrary.simpleMessage("Verification Code"),
    "confirmPasswordHint": MessageLookupByLibrary.simpleMessage(
      "Repeat your password",
    ),
    "confirmPasswordLabel": MessageLookupByLibrary.simpleMessage(
      "Confirm Password",
    ),
    "createCourse": MessageLookupByLibrary.simpleMessage("Create Course"),
    "createCourseDesc": MessageLookupByLibrary.simpleMessage(
      "Design and publish a new course",
    ),
    "emailHint": MessageLookupByLibrary.simpleMessage("Enter your email"),
    "emailInUse": MessageLookupByLibrary.simpleMessage(
      "This email is already registered.",
    ),
    "emailInvalid": MessageLookupByLibrary.simpleMessage("Enter a valid email"),
    "emailLabel": MessageLookupByLibrary.simpleMessage("Email"),
    "emailNotConfirmed": MessageLookupByLibrary.simpleMessage(
      "Please confirm your email before logging in.",
    ),
    "emailRequired": MessageLookupByLibrary.simpleMessage("Email is required"),
    "emailVerified": MessageLookupByLibrary.simpleMessage(
      "Email verified successfully",
    ),
    "forgotPassword": MessageLookupByLibrary.simpleMessage("Forgot Password?"),
    "instructorTitle": MessageLookupByLibrary.simpleMessage(
      "Instructor Dashboard",
    ),
    "instructorWelcome": m0,
    "invalidCode": MessageLookupByLibrary.simpleMessage(
      "Invalid verification code",
    ),
    "invalidCredentials": MessageLookupByLibrary.simpleMessage(
      "Invalid email or password.",
    ),
    "invalidOtp": MessageLookupByLibrary.simpleMessage(
      "The code is invalid or has expired.",
    ),
    "loginButton": MessageLookupByLibrary.simpleMessage("Login"),
    "loginSubtitle": MessageLookupByLibrary.simpleMessage(
      "Sign in to continue your learning journey",
    ),
    "loginTitle": MessageLookupByLibrary.simpleMessage("Welcome Back"),
    "myCourses": MessageLookupByLibrary.simpleMessage("My Courses"),
    "myCoursesDesc": MessageLookupByLibrary.simpleMessage(
      "View and access your enrolled courses",
    ),
    "myStudents": MessageLookupByLibrary.simpleMessage("My Students"),
    "myStudentsDesc": MessageLookupByLibrary.simpleMessage(
      "Manage and assist your enrolled students",
    ),
    "nameHint": MessageLookupByLibrary.simpleMessage("Enter your full name"),
    "nameLabel": MessageLookupByLibrary.simpleMessage("Full Name"),
    "nameRequired": MessageLookupByLibrary.simpleMessage("Name is required"),
    "networkError": MessageLookupByLibrary.simpleMessage(
      "Network error. Check your connection.",
    ),
    "noAccount": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account?",
    ),
    "otpSubtitle": m1,
    "otpTitle": MessageLookupByLibrary.simpleMessage("Email Verification"),
    "passwordHint": MessageLookupByLibrary.simpleMessage("Enter your password"),
    "passwordLabel": MessageLookupByLibrary.simpleMessage("Password"),
    "passwordLength": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 6 characters",
    ),
    "passwordMismatch": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match",
    ),
    "passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Password is required",
    ),
    "passwordStrengthMedium": MessageLookupByLibrary.simpleMessage(
      "The password is medium.",
    ),
    "passwordStrengthStrong": MessageLookupByLibrary.simpleMessage(
      "The password is strong.",
    ),
    "passwordStrengthWeak": MessageLookupByLibrary.simpleMessage(
      "The password is weak.",
    ),
    "progress": MessageLookupByLibrary.simpleMessage("My Progress"),
    "progressDesc": MessageLookupByLibrary.simpleMessage(
      "Track your learning achievements",
    ),
    "rateLimitExceeded": MessageLookupByLibrary.simpleMessage(
      "Too many attempts. Please try again later.",
    ),
    "registerButton": MessageLookupByLibrary.simpleMessage("Register"),
    "resendButton": MessageLookupByLibrary.simpleMessage("Resend Code"),
    "resendIn": m2,
    "resetPasswordFailed": MessageLookupByLibrary.simpleMessage(
      "Failed to send reset password link",
    ),
    "roleRequiredError": MessageLookupByLibrary.simpleMessage(
      "Please select whether you are a Student or a Teacher",
    ),
    "roleStudent": MessageLookupByLibrary.simpleMessage("Student"),
    "roleStudentDesc": MessageLookupByLibrary.simpleMessage(
      "Learn new skills and access courses",
    ),
    "roleTitle": MessageLookupByLibrary.simpleMessage("Choose Account Type"),
    "roleTutor": MessageLookupByLibrary.simpleMessage("Teacher"),
    "roleTutorDesc": MessageLookupByLibrary.simpleMessage(
      "Share your expertise and teach students",
    ),
    "schedule": MessageLookupByLibrary.simpleMessage("Class Schedule"),
    "scheduleDesc": MessageLookupByLibrary.simpleMessage(
      "Check your upcoming live sessions",
    ),
    "serverError": MessageLookupByLibrary.simpleMessage(
      "A server error occurred. Please try again.",
    ),
    "signOutFailed": MessageLookupByLibrary.simpleMessage("Failed to sign out"),
    "signupLink": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "signupSubtitle": MessageLookupByLibrary.simpleMessage(
      "Start your journey with us today",
    ),
    "signupTitle": MessageLookupByLibrary.simpleMessage("Create Account"),
    "somethingWentWrong": MessageLookupByLibrary.simpleMessage(
      "Something went wrong, please try again later",
    ),
    "studentTitle": MessageLookupByLibrary.simpleMessage("Student Dashboard"),
    "studentWelcome": m3,
    "unexpectedError": MessageLookupByLibrary.simpleMessage(
      "An unexpected error occurred.",
    ),
    "verifyButton": MessageLookupByLibrary.simpleMessage("Verify"),
  };
}

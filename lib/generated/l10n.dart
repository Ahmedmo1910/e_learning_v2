// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `E-Learning App`
  String get appTitle {
    return Intl.message('E-Learning App', name: 'appTitle', desc: '', args: []);
  }

  /// `Invalid email or password.`
  String get invalidCredentials {
    return Intl.message(
      'Invalid email or password.',
      name: 'invalidCredentials',
      desc: '',
      args: [],
    );
  }

  /// `This email is already registered.`
  String get emailInUse {
    return Intl.message(
      'This email is already registered.',
      name: 'emailInUse',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your email before logging in.`
  String get emailNotConfirmed {
    return Intl.message(
      'Please confirm your email before logging in.',
      name: 'emailNotConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `The code is invalid or has expired.`
  String get invalidOtp {
    return Intl.message(
      'The code is invalid or has expired.',
      name: 'invalidOtp',
      desc: '',
      args: [],
    );
  }

  /// `Too many attempts. Please try again later.`
  String get rateLimitExceeded {
    return Intl.message(
      'Too many attempts. Please try again later.',
      name: 'rateLimitExceeded',
      desc: '',
      args: [],
    );
  }

  /// `Network error. Check your connection.`
  String get networkError {
    return Intl.message(
      'Network error. Check your connection.',
      name: 'networkError',
      desc: '',
      args: [],
    );
  }

  /// `A server error occurred. Please try again.`
  String get serverError {
    return Intl.message(
      'A server error occurred. Please try again.',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred.`
  String get unexpectedError {
    return Intl.message(
      'An unexpected error occurred.',
      name: 'unexpectedError',
      desc: '',
      args: [],
    );
  }

  /// `The password is weak.`
  String get passwordStrengthWeak {
    return Intl.message(
      'The password is weak.',
      name: 'passwordStrengthWeak',
      desc: '',
      args: [],
    );
  }

  /// `The password is medium.`
  String get passwordStrengthMedium {
    return Intl.message(
      'The password is medium.',
      name: 'passwordStrengthMedium',
      desc: '',
      args: [],
    );
  }

  /// `The password is strong.`
  String get passwordStrengthStrong {
    return Intl.message(
      'The password is strong.',
      name: 'passwordStrengthStrong',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try again later`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong, please try again later',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Failed to sign out`
  String get signOutFailed {
    return Intl.message(
      'Failed to sign out',
      name: 'signOutFailed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to send reset password link`
  String get resetPasswordFailed {
    return Intl.message(
      'Failed to send reset password link',
      name: 'resetPasswordFailed',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get loginTitle {
    return Intl.message('Welcome Back', name: 'loginTitle', desc: '', args: []);
  }

  /// `Sign in to continue your learning journey`
  String get loginSubtitle {
    return Intl.message(
      'Sign in to continue your learning journey',
      name: 'loginSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailLabel {
    return Intl.message('Email', name: 'emailLabel', desc: '', args: []);
  }

  /// `Enter your email`
  String get emailHint {
    return Intl.message(
      'Enter your email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Email is required`
  String get emailRequired {
    return Intl.message(
      'Email is required',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get emailInvalid {
    return Intl.message(
      'Enter a valid email',
      name: 'emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordLabel {
    return Intl.message('Password', name: 'passwordLabel', desc: '', args: []);
  }

  /// `Enter your password`
  String get passwordHint {
    return Intl.message(
      'Enter your password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get passwordRequired {
    return Intl.message(
      'Password is required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get passwordLength {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'passwordLength',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginButton {
    return Intl.message('Login', name: 'loginButton', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get noAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signupLink {
    return Intl.message('Sign Up', name: 'signupLink', desc: '', args: []);
  }

  /// `Create Account`
  String get signupTitle {
    return Intl.message(
      'Create Account',
      name: 'signupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Start your journey with us today`
  String get signupSubtitle {
    return Intl.message(
      'Start your journey with us today',
      name: 'signupSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get nameLabel {
    return Intl.message('Full Name', name: 'nameLabel', desc: '', args: []);
  }

  /// `Enter your full name`
  String get nameHint {
    return Intl.message(
      'Enter your full name',
      name: 'nameHint',
      desc: '',
      args: [],
    );
  }

  /// `Name is required`
  String get nameRequired {
    return Intl.message(
      'Name is required',
      name: 'nameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPasswordLabel {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Repeat your password`
  String get confirmPasswordHint {
    return Intl.message(
      'Repeat your password',
      name: 'confirmPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordMismatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordMismatch',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get registerButton {
    return Intl.message('Register', name: 'registerButton', desc: '', args: []);
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Choose Account Type`
  String get roleTitle {
    return Intl.message(
      'Choose Account Type',
      name: 'roleTitle',
      desc: '',
      args: [],
    );
  }

  /// `Student`
  String get roleStudent {
    return Intl.message('Student', name: 'roleStudent', desc: '', args: []);
  }

  /// `Learn new skills and access courses`
  String get roleStudentDesc {
    return Intl.message(
      'Learn new skills and access courses',
      name: 'roleStudentDesc',
      desc: '',
      args: [],
    );
  }

  /// `Teacher`
  String get roleTutor {
    return Intl.message('Teacher', name: 'roleTutor', desc: '', args: []);
  }

  /// `Share your expertise and teach students`
  String get roleTutorDesc {
    return Intl.message(
      'Share your expertise and teach students',
      name: 'roleTutorDesc',
      desc: '',
      args: [],
    );
  }

  /// `Please select whether you are a Student or a Teacher`
  String get roleRequiredError {
    return Intl.message(
      'Please select whether you are a Student or a Teacher',
      name: 'roleRequiredError',
      desc: '',
      args: [],
    );
  }

  /// `Email Verification`
  String get otpTitle {
    return Intl.message(
      'Email Verification',
      name: 'otpTitle',
      desc: '',
      args: [],
    );
  }

  /// `We've sent a 6-digit code to {email}`
  String otpSubtitle(Object email) {
    return Intl.message(
      'We\'ve sent a 6-digit code to $email',
      name: 'otpSubtitle',
      desc: '',
      args: [email],
    );
  }

  /// `Verification Code`
  String get codeLabel {
    return Intl.message(
      'Verification Code',
      name: 'codeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter 6-digit code`
  String get codeHint {
    return Intl.message(
      'Enter 6-digit code',
      name: 'codeHint',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verifyButton {
    return Intl.message('Verify', name: 'verifyButton', desc: '', args: []);
  }

  /// `Resend Code`
  String get resendButton {
    return Intl.message(
      'Resend Code',
      name: 'resendButton',
      desc: '',
      args: [],
    );
  }

  /// `Resend in {seconds}s`
  String resendIn(Object seconds) {
    return Intl.message(
      'Resend in ${seconds}s',
      name: 'resendIn',
      desc: '',
      args: [seconds],
    );
  }

  /// `Invalid verification code`
  String get invalidCode {
    return Intl.message(
      'Invalid verification code',
      name: 'invalidCode',
      desc: '',
      args: [],
    );
  }

  /// `Email verified successfully`
  String get emailVerified {
    return Intl.message(
      'Email verified successfully',
      name: 'emailVerified',
      desc: '',
      args: [],
    );
  }

  /// `Student Dashboard`
  String get studentTitle {
    return Intl.message(
      'Student Dashboard',
      name: 'studentTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back, {name}!`
  String studentWelcome(Object name) {
    return Intl.message(
      'Welcome back, $name!',
      name: 'studentWelcome',
      desc: '',
      args: [name],
    );
  }

  /// `My Courses`
  String get myCourses {
    return Intl.message('My Courses', name: 'myCourses', desc: '', args: []);
  }

  /// `View and access your enrolled courses`
  String get myCoursesDesc {
    return Intl.message(
      'View and access your enrolled courses',
      name: 'myCoursesDesc',
      desc: '',
      args: [],
    );
  }

  /// `My Progress`
  String get progress {
    return Intl.message('My Progress', name: 'progress', desc: '', args: []);
  }

  /// `Track your learning achievements`
  String get progressDesc {
    return Intl.message(
      'Track your learning achievements',
      name: 'progressDesc',
      desc: '',
      args: [],
    );
  }

  /// `Class Schedule`
  String get schedule {
    return Intl.message('Class Schedule', name: 'schedule', desc: '', args: []);
  }

  /// `Check your upcoming live sessions`
  String get scheduleDesc {
    return Intl.message(
      'Check your upcoming live sessions',
      name: 'scheduleDesc',
      desc: '',
      args: [],
    );
  }

  /// `Instructor Dashboard`
  String get instructorTitle {
    return Intl.message(
      'Instructor Dashboard',
      name: 'instructorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back, Coach {name}!`
  String instructorWelcome(Object name) {
    return Intl.message(
      'Welcome back, Coach $name!',
      name: 'instructorWelcome',
      desc: '',
      args: [name],
    );
  }

  /// `Create Course`
  String get createCourse {
    return Intl.message(
      'Create Course',
      name: 'createCourse',
      desc: '',
      args: [],
    );
  }

  /// `Design and publish a new course`
  String get createCourseDesc {
    return Intl.message(
      'Design and publish a new course',
      name: 'createCourseDesc',
      desc: '',
      args: [],
    );
  }

  /// `My Students`
  String get myStudents {
    return Intl.message('My Students', name: 'myStudents', desc: '', args: []);
  }

  /// `Manage and assist your enrolled students`
  String get myStudentsDesc {
    return Intl.message(
      'Manage and assist your enrolled students',
      name: 'myStudentsDesc',
      desc: '',
      args: [],
    );
  }

  /// `Performance Analytics`
  String get analytics {
    return Intl.message(
      'Performance Analytics',
      name: 'analytics',
      desc: '',
      args: [],
    );
  }

  /// `Track your ratings, feedback, and sales`
  String get analyticsDesc {
    return Intl.message(
      'Track your ratings, feedback, and sales',
      name: 'analyticsDesc',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

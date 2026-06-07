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

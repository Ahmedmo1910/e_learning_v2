import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final SharedPreferences _pref;
  static const String _themeKey = 'theme_mode';
  ThemeCubit(this._pref) : super(const ThemeState()) {
    _loadTheme();
  }

  Future<void> setTheme({required ThemeMode mode}) async {
    await _pref.setString(_themeKey, mode.name);
    emit(state.copyWith(themeMode: mode));
  }

  void _loadTheme() {
    final themeString = _pref.getString(_themeKey);
    if (themeString != null) {
      final themeMode = ThemeMode.values.firstWhere(
        (mode) => mode.name == themeString,
        orElse: () => ThemeMode.system,
      );
      emit(state.copyWith(themeMode: themeMode));
    }
  }

  Future<void> toggleTheme() async {
    final newThemeMode = state.themeMode == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
    emit(state.copyWith(themeMode: newThemeMode));
    await setTheme(mode: newThemeMode);
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class LanguageCubit extends Cubit<Locale> {
  LanguageCubit() : super(const Locale('en'));

  void toggleLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    if (state.languageCode == 'en') {
      emit(const Locale('ar'));
      await prefs.setString('language', 'ar');
    } else {
      emit(const Locale('en'));
      await prefs.setString('language', 'en');
    }
  }

  void loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString('language') ?? 'en';
    emit(Locale(languageCode));
  }
}

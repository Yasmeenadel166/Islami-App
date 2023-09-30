
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {

  ThemeMode currentTheme = ThemeMode.light; // default
  String currentLocale = 'en';

void changeTheme (ThemeMode newTheme) {
  if(newTheme == currentTheme) return ;
  currentTheme = newTheme;
  notifyListeners();
}

  String getBachgroundImage() {
  return currentTheme == ThemeMode.dark
      ? 'assets/images/dark_bg.png'
      : 'assets/images/default_bg.png';
}

  bool isDarkEnabled() {
  return currentTheme == ThemeMode.dark;   // == question
  }

  void changeLocale(String newLocale) {
  if(newLocale == currentLocale) return;
  currentLocale = newLocale;
  notifyListeners();
  }

}
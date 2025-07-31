// locale_provider.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider with ChangeNotifier {
  Locale? _locale;

  Locale? get locale => _locale;

  // Constructor principal que carga de preferencias (para uso en la app)
  LocaleProvider() {
    _loadLocale();
  }

  // ¡Nuevo! Constructor para inicializar con un locale específico (útil para tests)
  LocaleProvider.withLocale(Locale? initialLocale) : _locale = initialLocale;

  Future<void> _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final langCode = prefs.getString('langCode');
    if (langCode != null) {
      _locale = Locale(langCode);
      notifyListeners();
    }
  }

  Future<void> setLocale(Locale locale) async {
    _locale = locale;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('langCode', locale.languageCode);
    notifyListeners();
  }

  void clearLocale() async {
    _locale = null;
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('langCode');
    notifyListeners();
  }
}

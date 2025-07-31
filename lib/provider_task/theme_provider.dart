// theme_provider.dart
import 'package:flutter/material.dart';
import '../services/preferences_service.dart'; // Asegúrate de que los métodos NO sean estáticos aquí

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;
  // Asegúrate de que PreferencesService tenga métodos NO estáticos, como acordamos.
  final PreferencesService _preferencesService;

  bool get isDarkMode => _isDarkMode;

  // Constructor principal que carga el tema (para uso en la app)
  ThemeProvider({PreferencesService? preferencesService})
      : _preferencesService = preferencesService ?? PreferencesService() {
    loadTheme();
  }

  // ¡Nuevo! Constructor para inicializar con un estado de tema específico (útil para tests)
  ThemeProvider.withTheme(bool initialIsDarkMode,
      {PreferencesService? preferencesService})
      : _isDarkMode = initialIsDarkMode,
        _preferencesService = preferencesService ?? PreferencesService();

  Future<void> loadTheme() async {
    _isDarkMode =
        await _preferencesService.getDarkMode(); // Usando la instancia
    notifyListeners();
  }

  void toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    await _preferencesService.setDarkMode(_isDarkMode); // Usando la instancia
    notifyListeners();
  }
}

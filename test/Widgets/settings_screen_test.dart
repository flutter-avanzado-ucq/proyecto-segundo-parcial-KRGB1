import 'package:flutter/material.dart';
import 'package:flutter_animaciones_notificaciones/l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_animaciones_notificaciones/screens/settings_screen.dart';
import 'package:flutter_animaciones_notificaciones/provider_task/theme_provider.dart';
import 'package:flutter_animaciones_notificaciones/provider_task/locale_provider.dart';

void main() {
  testWidgets('SettingsScreen muestra opciones de idioma y tema',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          // Inicialización directa del ThemeProvider para el test.
          // En lugar de que ThemeProvider intente cargar el tema asincrónicamente
          // desde PreferencesService se usa el constructor 'withTheme' para inicializarlo
          // con un estado predefinido (false = modo claro).
          ChangeNotifierProvider<ThemeProvider>(
              create: (_) => ThemeProvider.withTheme(false)),

          // Inicialización directa del LocaleProvider para el test.
          // Se usa el constructor 'withLocale' para
          // establecer el idioma inicial directamente en español ('es'),
          // evitando la necesidad de simular SharedPreferences.
          ChangeNotifierProvider<LocaleProvider>(
              create: (_) => LocaleProvider.withLocale(const Locale('es'))),
        ],
        child: MaterialApp(
          // Los `localizationsDelegates` son esenciales para que la app (y por ende el test)
          // sepa cómo cargar los textos localizados (l10n).
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          // `supportedLocales` indica qué idiomas soporta tu aplicación.
          // Es importante que el locale que se usa en el test ('es') esté en esta lista.
          supportedLocales: const [
            Locale('es'),
            Locale(
                'en'), // Asegúrate de añadir todos los locales que tu app soporte
          ],
          // `locale` establece el idioma actual para la prueba, asegurando
          // que los textos se carguen en español.
          locale: const Locale('es'),
          // El `home` es el widget que queremos probar. Lo envolvemos en un Scaffold
          // para simular un entorno de aplicación típico, lo que puede ser necesario
          // para el funcionamiento correcto de ciertos widgets o APIs de Flutter.
          home: const Scaffold(body: SettingsScreen()),
        ),
      ),
    );

    // Uso de `tester.pumpAndSettle()`.
    // Esto hace que el tester espere hasta que todas las animaciones
    // y todas las microtareas asíncronas pendientes se completen.
    // Esto asegura que la UI se ha construido completamente y los datos están listos
    // antes de realizar las aserciones.
    await tester.pumpAndSettle();

    // Verificamos que el texto "Idioma / Language" esté presente en la pantalla.
    // `findsAtLeastNWidgets(1)` asegura que se encuentre al menos una vez.
    // Esto verifica que la SettingsScreen se renderiza correctamente con el texto esperado.
    expect(find.text('Idioma / Language'), findsAtLeastNWidgets(1));
  });
}

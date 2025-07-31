// test/widgets/header_test.dart

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_animaciones_notificaciones/services/holiday_service.dart';
import 'package:flutter_animaciones_notificaciones/services/weather_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_animaciones_notificaciones/generated/app_localizations.dart';
import 'package:flutter_animaciones_notificaciones/widgets/header.dart';
import 'package:flutter_animaciones_notificaciones/provider_task/holiday_provider.dart';
import 'package:flutter_animaciones_notificaciones/provider_task/weather_provider.dart';

// --- Clases Falsas para Localización ---
// Se añaden estas clases para simular los textos de la aplicación en los tests,
// en lugar de depender de la generación real de archivos de internacionalización.
class FakeAppLocalizations implements AppLocalizations {
  final Locale locale;

  FakeAppLocalizations(this.locale);

  @override
  String get greeting => 'Hola de prueba';
  @override
  String get todayTasks => 'Tareas de prueba';

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class FakeAppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const FakeAppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<AppLocalizations> load(Locale locale) =>
      Future.value(FakeAppLocalizations(locale));

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) =>
      false;
}

// --- Proveedores Falsos ---
// Se mantienen los fakes para los servicios, asegurando que no haya llamadas de red.
class FakeWeatherProvider extends WeatherProvider {
  @override
  WeatherData? get weatherData => WeatherData(
        temperature: 25.5,
        description: 'Soleado',
        cityName: 'Querétaro',
        iconCode: '01d',
      );

  @override
  bool get isLoading => false;

  @override
  String? get errorMessage => null;

  // Se añade la implementación del método loadWeather para completar la interfaz.
  @override
  Future<void> loadWeather(double lat, double lon) async {}
}

class FakeHolidayProvider extends HolidayProvider {
  @override
  Holiday? get todayHoliday {
    return Holiday(
      localName: 'Día de prueba',
      date: DateTime.now(),
    );
  }

  // Se añaden isLoading y errorMessage para completar la interfaz y el comportamiento.
  @override
  bool get isLoading => false;

  @override
  String? get errorMessage => null;

  // Se añade la implementación del método loadHolidays para completar la interfaz.
  @override
  Future<void> loadHolidays(
      {required int year, required String countryCode}) async {}
}

// --- Función Principal del Test ---
void main() {
  // Se mantiene la anulación de HttpOverrides para evitar peticiones de red.
  setUpAll(() => HttpOverrides.global = _NoNetworkHttpOverrides());

  testWidgets('Header muestra feriado y clima correctamente', (tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<WeatherProvider>(
              create: (_) => FakeWeatherProvider()),
          ChangeNotifierProvider<HolidayProvider>(
              create: (_) => FakeHolidayProvider()),
        ],
        child: MaterialApp(
          localizationsDelegates: const [
            // Se usa el delegado falso de localización para un test más aislado y controlado.
            FakeAppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('es')],
          home: const Scaffold(
            body: Header(),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // Se verifica la presencia del texto del feriado y el clima.
    expect(find.textContaining('feriado'), findsOneWidget);
    expect(find.textContaining('25.5'), findsOneWidget);
    expect(find.textContaining('Soleado'), findsOneWidget);

    // Se añaden aserciones para los textos simulados de localización,
    // garantizando que el Header los use correctamente.
    expect(find.text('Hola de prueba'), findsOneWidget);
    expect(find.text('Tareas de prueba'), findsOneWidget);
  });
}

// --- Anulación de HttpOverrides ---
// Clase para evitar llamadas HTTP en el entorno de pruebas.
class _NoNetworkHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    throw UnsupportedError('No HTTP requests allowed in widget tests');
  }
}

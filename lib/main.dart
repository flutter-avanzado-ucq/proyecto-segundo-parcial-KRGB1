//Commit1
import 'package:flutter/material.dart';
import 'package:flutter_animaciones_notificaciones/generated/app_localizations.dart';
import 'package:flutter_animaciones_notificaciones/models/task_model.dart'
    as task_model;
// Integración Hive: importación de Hive Flutter
import 'package:hive_flutter/hive_flutter.dart';

import 'screens/tarea_screen.dart';
import 'screens/settings_screen.dart';
import 'tema/tema_app.dart';
import 'package:provider/provider.dart';
import 'provider_task/task_provider.dart';
import 'provider_task/theme_provider.dart';
import 'provider_task/locale_provider.dart'; // Importación de LocaleProvider

// Importar modelo para Hive

// Importar el servicio de notificaciones
import 'services/notification_service.dart';

// NUEVO: Importar AppLocalizations generado
import 'package:flutter_animaciones_notificaciones/generated/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  // Asegura que Flutter esté inicializado
  WidgetsFlutterBinding.ensureInitialized();

  // Integración Hive: inicialización de Hive
  await Hive.initFlutter();

  // Integración Hive: registro del adapter para Task
  Hive.registerAdapter(task_model.TaskAdapter());

  // Integración Hive: apertura de la caja tasksBox
  await Hive.openBox<task_model.Task>('tasksBox');

  // Inicializar notificaciones
  await NotificationService.initializeNotifications();

  // Pedir permiso para notificaciones (Android 13+ y iOS)
  await NotificationService.requestPermission();

  // Iniciar la app
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(
            create: (_) => LocaleProvider()), // Registro de LocaleProvider
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Consumer para ThemeProvider para manejar el tema
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        // Consumer para LocaleProvider para manejar el idioma
        return Consumer<LocaleProvider>(
          builder: (context, localeProvider, _) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: AppLocalizations.of(context)!
                  .appTitle, // <-- internacionalizado
              theme: AppTheme.theme,
              darkTheme: ThemeData.dark(),
              themeMode:
                  themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,

              // Configuración de internacionalización
              locale: localeProvider.locale, // Configurar locale en MaterialApp
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'), // Inglés
                Locale('es'), // Español
              ],
              localeResolutionCallback: (locale, supportedLocales) {
                // Si localeProvider tiene un locale definido, usarlo
                if (localeProvider.locale != null) {
                  return localeProvider.locale;
                }
                // Buscar el locale del sistema en los locales soportados
                for (var supported in supportedLocales) {
                  if (supported.languageCode == locale?.languageCode) {
                    return supported;
                  }
                }
                // Si no se encuentra, usar el primer locale soportado como fallback
                return supportedLocales.first;
              },

              home: const TaskScreen(),
            );
          },
        );
      },
    );
  }
}

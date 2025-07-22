// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Tareas Pro';

  @override
  String get addTask => 'Agregar tarea';

  @override
  String get editTask => 'Editar tarea';

  @override
  String get deleteTask => 'Eliminar tarea';

  @override
  String pendingTasks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tienes $count tareas pendientes',
      one: 'Tienes 1 tarea pendiente',
      zero: 'No tienes tareas pendientes',
    );
    return '$_temp0';
  }

  @override
  String get taskDetails => 'Detalles de la tarea';

  @override
  String get changeTheme => 'Cambiar tema';

  @override
  String get addNewTask => 'Agregar nueva tarea';

  @override
  String get description => 'Descripción';

  @override
  String get selectDate => 'Selecciona una fecha';

  @override
  String get selectTime => 'Selecciona una hora';

  @override
  String get timeLabel => 'Hora';

  @override
  String dueDate(Object date) {
    return 'Vence el $date';
  }

  @override
  String get language => 'Idioma / Lenguage';

  @override
  String get hourLabel => 'Hora:';

  @override
  String get titleLabel => 'Título';

  @override
  String get changeDate => 'Cambiar fecha';

  @override
  String get changeTime => 'Cambiar hora';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get greeting => 'Hola, Liliana 👋';

  @override
  String get todayTasks => 'Estas son tus tareas para hoy';

  @override
  String get name => 'nombre';

  @override
  String dueLabel(Object date) {
    return 'Vence: $date';
  }

  @override
  String get newTask => 'Nueva tarea';

  @override
  String taskAdded(Object task) {
    return 'Has agregado la tarea: $task';
  }

  @override
  String taskPayload(Object task) {
    return 'Tarea: $task';
  }

  @override
  String get taskReminder => 'Recordatorio de tarea';

  @override
  String doNotForget(Object task) {
    return 'No olvides: $task';
  }

  @override
  String scheduledTaskPayload(Object date, Object task) {
    return 'Tarea programada: $task para $date';
  }

  @override
  String get editTaskTitle => 'Editar tarea';

  @override
  String get taskUpdated => 'Tarea actualizada';

  @override
  String taskUpdatedMsg(Object task) {
    return 'Has actualizado la tarea: $task';
  }

  @override
  String updatedTaskPayload(Object task) {
    return 'Tarea actualizada: $task';
  }

  @override
  String get updatedTaskReminder => 'Recordatorio de tarea actualizada';

  @override
  String updatedTaskPayloadWithDate(Object date, Object task) {
    return 'Tarea actualizada: $task para $date';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

import 'package:intl/intl.dart';
import 'app_localizations.dart';

/// The translations for Spanish (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => Intl.message('Tareas Pro', name: 'appTitle', desc: '');

  @override
  String get addTask =>
      Intl.message('Agregar tarea', name: 'addTask', desc: '');

  @override
  String get editTask =>
      Intl.message('Editar tarea', name: 'editTask', desc: '');

  @override
  String get deleteTask =>
      Intl.message('Eliminar tarea', name: 'deleteTask', desc: '');

  @override
  String pendingTasks(num count) => Intl.plural(count,
      zero: 'No tienes tareas pendientes',
      one: 'Tienes 1 tarea pendiente',
      other: 'Tienes $count tareas pendientes',
      name: 'pendingTasks',
      desc: 'Muestra el numero de tareas pendientes',
      args: [count]);

  @override
  String get taskDetails =>
      Intl.message('Detalles de la tarea', name: 'taskDetails', desc: '');

  @override
  String get changeTheme =>
      Intl.message('Cambiar tema', name: 'changeTheme', desc: '');

  @override
  String get addNewTask =>
      Intl.message('Agregar nueva tarea', name: 'addNewTask', desc: '');

  @override
  String get description =>
      Intl.message('Descripción', name: 'description', desc: '');

  @override
  String get selectDate =>
      Intl.message('Selecciona una fecha', name: 'selectDate', desc: '');

  @override
  String get selectTime =>
      Intl.message('Selecciona una hora', name: 'selectTime', desc: '');

  @override
  String get timeLabel => Intl.message('Hora', name: 'timeLabel', desc: '');

  @override
  String dueDate(Object date) => Intl.message('Vence el $date',
      name: 'dueDate',
      desc: 'Muestra la fecha de vencimiento de la tarea',
      args: [date]);

  @override
  String get language =>
      Intl.message('Idioma / Lenguage', name: 'language', desc: '');

  @override
  String get hourLabel => Intl.message('Hora:', name: 'hourLabel', desc: '');

  @override
  String get titleLabel => Intl.message('Título', name: 'titleLabel', desc: '');

  @override
  String get changeDate =>
      Intl.message('Cambiar fecha', name: 'changeDate', desc: '');

  @override
  String get changeTime =>
      Intl.message('Cambiar hora', name: 'changeTime', desc: '');

  @override
  String get saveChanges =>
      Intl.message('Guardar cambios', name: 'saveChanges', desc: '');

  @override
  String get greeting =>
      Intl.message('Hola, Liliana 👋', name: 'greeting', desc: '');

  @override
  String get todayTasks => Intl.message('Estas son tus tareas para hoy',
      name: 'todayTasks', desc: '');

  @override
  String get name => Intl.message('nombre', name: 'name', desc: '');

  @override
  String dueLabel(Object date) =>
      Intl.message('Vence: $date', name: 'dueLabel', desc: '');

  @override
  String get newTask => Intl.message('Nueva tarea', name: 'newTask', desc: '');

  @override
  String taskAdded(Object task) =>
      Intl.message('Has agregado la tarea: $task', name: 'taskAdded', desc: '');

  @override
  String taskPayload(Object task) =>
      Intl.message('Tarea: $task', name: 'taskPayload', desc: '');

  @override
  String get taskReminder =>
      Intl.message('Recordatorio de tarea', name: 'taskReminder', desc: '');

  @override
  String doNotForget(Object task) =>
      Intl.message('No olvides: $task', name: 'doNotForget', desc: '');

  @override
  String scheduledTaskPayload(Object task, Object date) =>
      Intl.message('Tarea programada: $task para $date',
          name: 'scheduledTaskPayload', desc: '');

  @override
  String get editTaskTitle =>
      Intl.message('Editar tarea', name: 'editTaskTitle', desc: '');

  @override
  String get taskUpdated =>
      Intl.message('Tarea actualizada', name: 'taskUpdated', desc: '');

  @override
  String taskUpdatedMsg(Object task) =>
      Intl.message('Has actualizado la tarea: $task',
          name: 'taskUpdatedMsg', desc: '');

  @override
  String updatedTaskPayload(Object task) =>
      Intl.message('Tarea actualizada: $task',
          name: 'updatedTaskPayload', desc: '');

  @override
  String get updatedTaskReminder =>
      Intl.message('Recordatorio de tarea actualizada',
          name: 'updatedTaskReminder', desc: '');

  @override
  String updatedTaskPayloadWithDate(Object task, Object date) =>
      Intl.message('Tarea actualizada: $task para $date',
          name: 'updatedTaskPayloadWithDate', desc: '');
}

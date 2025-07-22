// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: prefer_single_quotes

import 'package:intl/intl.dart';
import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([super.locale = 'en']);

  @override
  String get appTitle => Intl.message('Pro Tasks', name: 'appTitle', desc: '');

  @override
  String get addTask => Intl.message('Add task', name: 'addTask', desc: '');

  @override
  String get editTask => Intl.message('Edit task', name: 'editTask', desc: '');

  @override
  String get deleteTask =>
      Intl.message('Delete task', name: 'deleteTask', desc: '');

  @override
  String pendingTasks(num count) => Intl.plural(count,
      zero: 'No pending tasks',
      one: '1 pending task',
      other: '$count pending tasks',
      name: 'pendingTasks',
      desc: 'Shows the number of pending tasks',
      args: [count]);

  @override
  String get taskDetails =>
      Intl.message('Task Details', name: 'taskDetails', desc: '');

  @override
  String get changeTheme =>
      Intl.message('Change theme', name: 'changeTheme', desc: '');

  @override
  String get addNewTask =>
      Intl.message('Add new task', name: 'addNewTask', desc: '');

  @override
  String get description =>
      Intl.message('Description', name: 'description', desc: '');

  @override
  String get selectDate =>
      Intl.message('Select a date', name: 'selectDate', desc: '');

  @override
  String get selectTime =>
      Intl.message('Select time', name: 'selectTime', desc: '');

  @override
  String get timeLabel => Intl.message('Time', name: 'timeLabel', desc: '');

  @override
  String dueDate(Object date) => Intl.message('Due on $date',
      name: 'dueDate', desc: 'Shows the due date of the task', args: [date]);

  @override
  String get language => Intl.message('Language', name: 'language', desc: '');

  @override
  String get hourLabel => Intl.message('Time:', name: 'hourLabel', desc: '');

  @override
  String get titleLabel => Intl.message('Title', name: 'titleLabel', desc: '');

  @override
  String get changeDate =>
      Intl.message('Change date', name: 'changeDate', desc: '');

  @override
  String get changeTime =>
      Intl.message('Change time', name: 'changeTime', desc: '');

  @override
  String get saveChanges =>
      Intl.message('Save changes', name: 'saveChanges', desc: '');

  @override
  String get greeting =>
      Intl.message('Hi, Liliana 👋', name: 'greeting', desc: '');

  @override
  String get todayTasks => Intl.message('These are your tasks for today',
      name: 'todayTasks', desc: '');

  @override
  String get name => Intl.message('name', name: 'name', desc: '');

  @override
  String dueLabel(Object date) =>
      Intl.message('Due: $date', name: 'dueLabel', desc: '');

  @override
  String get newTask => Intl.message('New task', name: 'newTask', desc: '');

  @override
  String taskAdded(Object task) =>
      Intl.message('You have added the task: $task',
          name: 'taskAdded', desc: '');

  @override
  String taskPayload(Object task) =>
      Intl.message('Task: $task', name: 'taskPayload', desc: '');

  @override
  String get taskReminder =>
      Intl.message('Task reminder', name: 'taskReminder', desc: '');

  @override
  String doNotForget(Object task) =>
      Intl.message('Don\'t forget: $task', name: 'doNotForget', desc: '');

  @override
  String scheduledTaskPayload(Object task, Object date) =>
      Intl.message('Scheduled task: $task for $date',
          name: 'scheduledTaskPayload', desc: '');

  @override
  String get editTaskTitle =>
      Intl.message('Edit task', name: 'editTaskTitle', desc: '');

  @override
  String get taskUpdated =>
      Intl.message('Task updated', name: 'taskUpdated', desc: '');

  @override
  String taskUpdatedMsg(Object task) =>
      Intl.message('You have updated the task: $task',
          name: 'taskUpdatedMsg', desc: '');

  @override
  String updatedTaskPayload(Object task) =>
      Intl.message('Task updated: $task', name: 'updatedTaskPayload', desc: '');

  @override
  String get updatedTaskReminder => Intl.message('Updated task reminder',
      name: 'updatedTaskReminder', desc: '');

  @override
  String updatedTaskPayloadWithDate(Object task, Object date) =>
      Intl.message('Task updated: $task for $date',
          name: 'updatedTaskPayloadWithDate', desc: '');
}

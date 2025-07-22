// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Pro Tasks';

  @override
  String get addTask => 'Add task';

  @override
  String get editTask => 'Edit task';

  @override
  String get deleteTask => 'Delete task';

  @override
  String pendingTasks(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pending tasks',
      one: '1 pending task',
      zero: 'No pending tasks',
    );
    return '$_temp0';
  }

  @override
  String get taskDetails => 'Task Details';

  @override
  String get changeTheme => 'Change theme';

  @override
  String get addNewTask => 'Add new task';

  @override
  String get description => 'Description';

  @override
  String get selectDate => 'Select a date';

  @override
  String get selectTime => 'Select time';

  @override
  String get timeLabel => 'Time';

  @override
  String dueDate(Object date) {
    return 'Due on $date';
  }

  @override
  String get language => 'Language';

  @override
  String get hourLabel => 'Time:';

  @override
  String get titleLabel => 'Title';

  @override
  String get changeDate => 'Change date';

  @override
  String get changeTime => 'Change time';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get greeting => 'Hi, Liliana 👋';

  @override
  String get todayTasks => 'These are your tasks for today';

  @override
  String get name => 'name';

  @override
  String dueLabel(Object date) {
    return 'Due: $date';
  }

  @override
  String get newTask => 'New task';

  @override
  String taskAdded(Object task) {
    return 'You have added the task: $task';
  }

  @override
  String taskPayload(Object task) {
    return 'Task: $task';
  }

  @override
  String get taskReminder => 'Task reminder';

  @override
  String doNotForget(Object task) {
    return 'Don\'t forget: $task';
  }

  @override
  String scheduledTaskPayload(Object date, Object task) {
    return 'Scheduled task: $task for $date';
  }

  @override
  String get editTaskTitle => 'Edit task';

  @override
  String get taskUpdated => 'Task updated';

  @override
  String taskUpdatedMsg(Object task) {
    return 'You have updated the task: $task';
  }

  @override
  String updatedTaskPayload(Object task) {
    return 'Task updated: $task';
  }

  @override
  String get updatedTaskReminder => 'Updated task reminder';

  @override
  String updatedTaskPayloadWithDate(Object date, Object task) {
    return 'Task updated: $task for $date';
  }
}

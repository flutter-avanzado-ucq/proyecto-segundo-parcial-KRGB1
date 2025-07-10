// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, prefer_single_quotes

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'app_localizations_en.dart'; // Importa el archivo de localización en inglés
import 'app_localizations_es.dart'; // Importa el archivo de localización en español

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Use `AppLocalizations.of_deprecated(context)` to retain the behavior of Flutter's
/// `AppLocalizations.of` prior to version 2.0.0, which returned null if there was no
/// localization for the current locale.
///
/// In Flutter 2.0.0 and later, `AppLocalizations.of` throws an exception if
/// there is no localization for the current locale.
abstract class AppLocalizations {
  AppLocalizations(String locale);

  static AppLocalizations? _current;

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en', ''),
    Locale('es', '')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this is "Pro Tasks".
  String get appTitle;

  /// No description provided for @addTask.
  ///
  /// In en, this is "Add task".
  String get addTask;

  /// No description provided for @editTask.
  ///
  /// In en, this is "Edit task".
  String get editTask;

  /// No description provided for @deleteTask.
  ///
  /// In en, this is "Delete task".
  String get deleteTask;

  /// Shows the number of pending tasks
  ///
  /// In en, this is "{count, plural, =0{No pending tasks} =1{1 pending task} other{{count} pending tasks}}".
  String pendingTasks(num count);

  /// No description provided for @taskDetails.
  ///
  /// In en, this is "Task Details".
  String get taskDetails;

  /// No description provided for @changeTheme.
  ///
  /// In en, this is "Change theme".
  String get changeTheme;

  /// No description provided for @addNewTask.
  ///
  /// In en, this is "Add new task".
  String get addNewTask;

  /// No description provided for @description.
  ///
  /// In en, this is "Description".
  String get description;

  /// No description provided for @selectDate.
  ///
  /// In en, this is "Select a date".
  String get selectDate;

  /// No description provided for @selectTime.
  ///
  /// In en, this is "Select time".
  String get selectTime;

  /// No description provided for @timeLabel.
  ///
  /// In en, this is "Time".
  String get timeLabel;

  /// Shows the due date of the task
  ///
  /// In en, this is "Due on {date}".
  String dueDate(Object date);

  /// No description provided for @language.
  ///
  /// In en, this is "Language".
  String get language;

  /// No description provided for @hourLabel.
  ///
  /// In en, this is "Time:".
  String get hourLabel;

  /// No description provided for @titleLabel.
  ///
  /// In en, this is "Title".
  String get titleLabel;

  /// No description provided for @changeDate.
  ///
  /// In en, this is "Change date".
  String get changeDate;

  /// No description provided for @changeTime.
  ///
  /// In en, this is "Change time".
  String get changeTime;

  /// No description provided for @saveChanges.
  ///
  /// In en, this is "Save changes".
  String get saveChanges;

  /// No description provided for @greeting.
  ///
  /// In en, this is "Hi, Liliana 👋".
  String get greeting;

  /// No description provided for @todayTasks.
  ///
  /// In en, this is "These are your tasks for today".
  String get todayTasks;

  /// No description provided for @name.
  ///
  /// In en, this is "name".
  String get name;

  /// No description provided for @dueLabel.
  ///
  /// In en, this is "Due: {date}".
  String dueLabel(Object date);

  /// No description provided for @newTask.
  ///
  /// In en, this is "New task".
  String get newTask;

  /// No description provided for @taskAdded.
  ///
  /// In en, this is "You have added the task: {task}".
  String taskAdded(Object task);

  /// No description provided for @taskPayload.
  ///
  /// In en, this is "Task: {task}".
  String taskPayload(Object task);

  /// No description provided for @taskReminder.
  ///
  /// In en, this is "Task reminder".
  String get taskReminder;

  /// No description provided for @doNotForget.
  ///
  /// In en, this is "Don't forget: {task}".
  String doNotForget(Object task);

  /// No description provided for @scheduledTaskPayload.
  ///
  /// In en, this is "Scheduled task: {task} for {date}".
  String scheduledTaskPayload(Object task, Object date);

  /// No description provided for @editTaskTitle.
  ///
  /// In en, this is "Edit task".
  String get editTaskTitle;

  /// No description provided for @taskUpdated.
  ///
  /// In en, this is "Task updated".
  String get taskUpdated;

  /// No description provided for @taskUpdatedMsg.
  ///
  /// In en, this is "You have updated the task: {task}".
  String taskUpdatedMsg(Object task);

  /// No description provided for @updatedTaskPayload.
  ///
  /// In en, this is "Task updated: {task}".
  String updatedTaskPayload(Object task);

  /// No description provided for @updatedTaskReminder.
  ///
  /// In en, this is "Updated task reminder".
  String get updatedTaskReminder;

  /// No description provided for @updatedTaskPayloadWithDate.
  ///
  /// In en, this is "Task updated: {task} for {date}".
  String updatedTaskPayloadWithDate(Object task, Object date);

  static of(BuildContext context) {}
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      AppLocalizations.supportedLocales.contains(locale);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }
  assert(
      false,
      'AppLocalizations.delegate failed to load unsupported locale "$locale". '
      'This is likely a bug in the flutter_localizations package.');
  return AppLocalizationsEn(); // Fallback
}

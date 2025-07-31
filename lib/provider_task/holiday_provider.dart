import 'package:flutter/material.dart';
import 'package:flutter_animaciones_notificaciones/services/holiday_service.dart'; // Changed to absolute import

class HolidayProvider extends ChangeNotifier {
  final HolidayService _holidayService = HolidayService();

  List<Holiday> _holidays = [];

  bool _isLoading = false;
  String? _errorMessage;

  List<Holiday> get holidays => _holidays;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> loadHolidays(
      {required int year, required String countryCode}) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final data = await _holidayService.fetchHolidays(
          year: year, countryCode: countryCode);
      _holidays = data;
    } catch (e) {
      _errorMessage = 'No se pudo obtener los feriados';
    }

    _isLoading = false;
    notifyListeners();
  }

  Holiday? get todayHoliday {
    final today = DateTime.now();
    try {
      return _holidays.firstWhere(
        (holiday) =>
            holiday.date.year == today.year &&
            holiday.date.month == today.month &&
            holiday.date.day == today.day,
      );
    } catch (_) {
      return null;
    }
  }
}

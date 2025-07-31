// lib/models/holiday.dart

class Holiday {
  final String localName;
  final DateTime date;
  final String name;
  final String countryCode;

  Holiday({
    required this.localName,
    required this.date,
    required this.name,
    required this.countryCode,
  });
}

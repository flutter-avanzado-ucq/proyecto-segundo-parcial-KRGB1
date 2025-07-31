// lib/models/weather.dart

class WeatherData {
  final double temperature;
  final String description;
  final String cityName;
  final String iconCode;

  WeatherData({
    required this.temperature,
    required this.description,
    required this.cityName,
    required this.iconCode,
  });
}

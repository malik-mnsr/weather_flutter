// lib/core/constants/app_constants.dart
class AppConstants {
  static const String appName = 'Météo Flutter';

  // API
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const String apiKeyEnv = /*'OPENWEATHER_API_KEY'; */ '8967c59f44fdc392958a13d3a251192e';

  // Default values
  static const String defaultCity = 'Paris';
  static const String temperatureUnit = '°C';
  static const String windSpeedUnit = 'm/s';

  // Animation durations
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);
  static const Duration fastAnimationDuration = Duration(milliseconds: 150);
}

// lib/core/constants/api_constants.dart
class ApiConstants {
  static const String weatherEndpoint = '/weather';
  static const String forecastEndpoint = '/forecast';

  static const String queryParamCity = 'q';
  static const String queryParamApiKey = 'appid';
  static const String queryParamUnits = 'units';
  static const String queryParamLang = 'lang';

  static const String unitsMetric = 'metric';
  static const String langFrench = 'fr';
}
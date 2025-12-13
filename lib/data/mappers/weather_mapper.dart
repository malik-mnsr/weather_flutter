// lib/data/mappers/weather_mapper.dart

import '../../domain/entities/Weather.dart';
import '../models/weather_response.dart';

class WeatherMapper {
  Weather toEntity(WeatherResponse response) {
    final weatherInfo = response.weather.first;

    return Weather(
      cityName: response.name,
      temperature: response.main.temp,
      description: weatherInfo.description,
      iconCode: weatherInfo.icon,
      humidity: response.main.humidity,
      windSpeed: response.wind.speed,
      precipitation: _calculatePrecipitation(response.rain, response.snow),
      dateTime: DateTime.fromMillisecondsSinceEpoch(response.timestamp * 1000),
    );
  }

  double? _calculatePrecipitation(Rain? rain, Snow? snow) {
    if (rain?.oneHour != null) return rain!.oneHour!;
    if (rain?.threeHours != null) return rain!.threeHours! / 3;
    if (snow?.oneHour != null) return snow!.oneHour!;
    if (snow?.threeHours != null) return snow!.threeHours! / 3;
    return null;
  }
}

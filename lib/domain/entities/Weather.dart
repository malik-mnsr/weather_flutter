// lib/domain/entities/weather.dart
import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final String cityName;
  final double temperature;
  final String description;
  final String iconCode;
  final int humidity;
  final double windSpeed;
  final double? precipitation;
  final DateTime dateTime;

  const Weather({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.iconCode,
    required this.humidity,
    required this.windSpeed,
    this.precipitation,
    required this.dateTime,
  });

  @override
  List<Object?> get props => [
        cityName,
        temperature,
        description,
        iconCode,
        humidity,
        windSpeed,
        precipitation,
        dateTime,
      ];
}


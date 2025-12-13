// lib/domain/repositories/weather_repository.dart
import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/core/error/failure.dart';

import '../entities/Weather.dart';

abstract class WeatherRepository {
  Future<Either<Failure, Weather>> getCurrentWeather(String cityName);
}
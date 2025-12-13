// lib/domain/repositories/forecast_repository.dart
import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/core/error/failure.dart';

import '../entities/Forecast.dart';

abstract class ForecastRepository {
  Future<Either<Failure, List<Forecast>>> getForecast(String cityName);
}
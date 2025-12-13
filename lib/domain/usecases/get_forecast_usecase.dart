
// lib/domain/usecases/get_forecast_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/domain/repositories/forecast_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/Forecast.dart';
@injectable
class GetForecastUseCase {
  final ForecastRepository repository;

  GetForecastUseCase(this.repository);

  Future<Either<Failure, List<Forecast>>> execute(String cityName) async {
    return await repository.getForecast(cityName);
  }
}
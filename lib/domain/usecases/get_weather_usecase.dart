// lib/domain/usecases/get_weather_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/domain/repositories/weather_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/Weather.dart';
@injectable
class GetWeatherUseCase {
  final WeatherRepository repository;

  GetWeatherUseCase(this.repository);

  Future<Either<Failure, Weather>> execute(String cityName) async {
    return await repository.getCurrentWeather(cityName);
  }
}

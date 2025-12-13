import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/data/datasources/remote/weather_remote_data_source.dart';
import 'package:flutter_weather_app/data/mappers/weather_mapper.dart';
import 'package:flutter_weather_app/domain/repositories/weather_repository.dart';

import '../../core/error/exceptions.dart';
import '../entities/Weather.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;
  final WeatherMapper mapper;

  WeatherRepositoryImpl({
    required this.remoteDataSource,
    required this.mapper,
  });

  @override
  Future<Either<Failure, Weather>> getCurrentWeather(String cityName) async {
    try {
      final response = await remoteDataSource.getCurrentWeather(cityName);
      final weather = mapper.toEntity(response);
      return Right(weather);
    } catch (e) {
      return Left(_handleError(e));
    }
  }

  Failure _handleError(Object error) {
    if (error is ServerException) {
      return ServerFailure(error.message);
    } else if (error is NetworkException) {
      return NetworkFailure(error.message);
    } else if (error is NotFoundException) {
      return NotFoundFailure(error.message);
    } else {
      return ServerFailure('Erreur inattendue: $error');
    }
  }
}
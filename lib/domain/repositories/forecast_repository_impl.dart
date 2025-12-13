import 'package:dartz/dartz.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/data/mappers/forecast_mapper.dart';

import '../../core/error/exceptions.dart';
import '../../data/datasources/remote/forecast_remote_data_source.dart';
import '../../data/datasources/remote/weather_remote_data_source.dart';
import '../entities/Forecast.dart';
import 'forecast_repository.dart';

class ForecastRepositoryImpl implements ForecastRepository {
  final ForecastRemoteDataSource remoteDataSource;
  final ForecastMapper mapper;

  ForecastRepositoryImpl({
    required this.remoteDataSource,
    required this.mapper,
  });

  @override
  Future<Either<Failure, List<Forecast>>> getForecast(String cityName) async {
    try {
      final response = await remoteDataSource.getForecast(cityName);
      final forecasts = mapper.toEntityList(response);
      return Right(forecasts);
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
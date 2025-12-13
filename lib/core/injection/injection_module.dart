// lib/core/injection/injection_module.dart
import 'package:injectable/injectable.dart';

import '../../data/datasources/remote/forecast_remote_data_source.dart';
import '../../data/datasources/remote/http_client.dart';
import '../../data/datasources/remote/weather_remote_data_source.dart';
import '../../data/mappers/forecast_mapper.dart';
import '../../data/mappers/weather_mapper.dart';

import '../../domain/repositories/forecast_repository.dart';
import '../../domain/repositories/forecast_repository_impl.dart';
import '../../domain/repositories/weather_repository.dart';
import '../../domain/repositories/weather_repository_impl.dart';
import '../../domain/usecases/get_forecast_usecase.dart';
import '../../domain/usecases/get_weather_usecase.dart';
import 'injection.dart';
@module
abstract class AppModule {
  @singleton
  WeatherHttpClient get weatherHttpClient => WeatherHttpClient();

  @singleton
  WeatherRemoteDataSource get weatherRemoteDataSource =>
      WeatherRemoteDataSourceImpl(getIt<WeatherHttpClient>());

  @singleton
  ForecastRemoteDataSource get forecastRemoteDataSource =>
      ForecastRemoteDataSourceImpl(getIt<WeatherHttpClient>());

  @singleton
  WeatherMapper get weatherMapper => WeatherMapper();

  @singleton
  ForecastMapper get forecastMapper => ForecastMapper();

  @singleton
  WeatherRepository get weatherRepository => WeatherRepositoryImpl(
    remoteDataSource: getIt<WeatherRemoteDataSource>(),
    mapper: getIt<WeatherMapper>(),
  );

  @singleton
  ForecastRepository get forecastRepository => ForecastRepositoryImpl(
    remoteDataSource: getIt<ForecastRemoteDataSource>(),
    mapper: getIt<ForecastMapper>(),
  );

// Retire ces deux lignes manuelles si @injectable est déjà utilisé
// @singleton
// GetWeatherUseCase get getWeatherUseCase =>
//     GetWeatherUseCase(getIt<WeatherRepository>());

// @singleton
// GetForecastUseCase get getForecastUseCase =>
//     GetForecastUseCase(getIt<ForecastRepository>());
}

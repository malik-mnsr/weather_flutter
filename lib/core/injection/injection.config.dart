// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_weather_app/core/injection/injection_module.dart'
    as _i574;
import 'package:flutter_weather_app/data/datasources/remote/forecast_remote_data_source.dart'
    as _i75;
import 'package:flutter_weather_app/data/datasources/remote/http_client.dart'
    as _i130;
import 'package:flutter_weather_app/data/datasources/remote/weather_remote_data_source.dart'
    as _i999;
import 'package:flutter_weather_app/data/mappers/forecast_mapper.dart' as _i842;
import 'package:flutter_weather_app/data/mappers/weather_mapper.dart' as _i957;
import 'package:flutter_weather_app/domain/repositories/forecast_repository.dart'
    as _i503;
import 'package:flutter_weather_app/domain/repositories/weather_repository.dart'
    as _i426;
import 'package:flutter_weather_app/domain/usecases/get_forecast_usecase.dart'
    as _i1038;
import 'package:flutter_weather_app/domain/usecases/get_weather_usecase.dart'
    as _i353;
import 'package:flutter_weather_app/presentation/cubits/weather_cubit.dart'
    as _i1067;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i130.WeatherHttpClient>(() => appModule.weatherHttpClient);
    gh.singleton<_i999.WeatherRemoteDataSource>(
        () => appModule.weatherRemoteDataSource);
    gh.singleton<_i75.ForecastRemoteDataSource>(
        () => appModule.forecastRemoteDataSource);
    gh.singleton<_i957.WeatherMapper>(() => appModule.weatherMapper);
    gh.singleton<_i842.ForecastMapper>(() => appModule.forecastMapper);
    gh.singleton<_i426.WeatherRepository>(() => appModule.weatherRepository);
    gh.singleton<_i503.ForecastRepository>(() => appModule.forecastRepository);
    gh.factory<_i353.GetWeatherUseCase>(
        () => _i353.GetWeatherUseCase(gh<_i426.WeatherRepository>()));
    gh.factory<_i1038.GetForecastUseCase>(
        () => _i1038.GetForecastUseCase(gh<_i503.ForecastRepository>()));
    gh.factory<_i1067.WeatherCubit>(() => _i1067.WeatherCubit(
          getWeatherUseCase: gh<_i353.GetWeatherUseCase>(),
          getForecastUseCase: gh<_i1038.GetForecastUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i574.AppModule {}

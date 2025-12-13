
// lib/presentation/cubits/weather_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/core/error/failure.dart';
import 'package:flutter_weather_app/domain/usecases/get_forecast_usecase.dart';
import 'package:flutter_weather_app/domain/usecases/get_weather_usecase.dart';
import '../../domain/entities/Forecast.dart';
import '../../domain/entities/Weather.dart';
import 'weather_state.dart';
import 'package:injectable/injectable.dart';
@injectable
class WeatherCubit extends Cubit<WeatherState> {
  final GetWeatherUseCase getWeatherUseCase;
  final GetForecastUseCase getForecastUseCase;

  WeatherCubit({
    required this.getWeatherUseCase,
    required this.getForecastUseCase,
  }) : super(WeatherInitial());

  Future<void> fetchWeather(String cityName) async {
    emit(WeatherLoading());

    final weatherResult = await getWeatherUseCase.execute(cityName);
    final forecastResult = await getForecastUseCase.execute(cityName);

    weatherResult.fold(
          (weatherFailure) {
        emit(WeatherError(weatherFailure.message));
      },
          (weather) {
        forecastResult.fold(
              (forecastFailure) {
            emit(WeatherError(forecastFailure.message));
          },
              (forecasts) {
            emit(WeatherLoaded(weather: weather, forecasts: forecasts));
          },
        );
      },
    );
  }
}
// lib/presentation/cubits/weather_state.dart
import 'package:equatable/equatable.dart';

import '../../domain/entities/Forecast.dart';
import '../../domain/entities/Weather.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object?> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherLoaded extends WeatherState {
  final Weather weather;
  final List<Forecast> forecasts;

  const WeatherLoaded({
    required this.weather,
    required this.forecasts,
  });

  @override
  List<Object?> get props => [weather, forecasts];
}

final class WeatherError extends WeatherState {
  final String message;

  const WeatherError(this.message);

  @override
  List<Object?> get props => [message];
}
// Ajoute à la fin du fichier weather_state.dart
extension WeatherStateExtension on WeatherState {
  T when<T>({
    required T Function() initial,
    required T Function() loading,
    required T Function(Weather weather, List<Forecast> forecasts) loaded,
    required T Function(String message) error,
  }) {
    return switch (this) {
      WeatherInitial() => initial(),
      WeatherLoading() => loading(),
      WeatherLoaded(:final weather, :final forecasts) => loaded(weather, forecasts),
      WeatherError(:final message) => error(message),
    };
  }
}
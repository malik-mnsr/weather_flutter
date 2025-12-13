
// lib/data/datasources/remote/forecast_remote_data_source.dart
import 'package:flutter_weather_app/core/error/exceptions.dart';
import 'package:flutter_weather_app/data/datasources/remote/http_client.dart';
import 'package:flutter_weather_app/data/models/forecast_response.dart';

abstract class ForecastRemoteDataSource {
  Future<ForecastResponse> getForecast(String cityName);
}

class ForecastRemoteDataSourceImpl implements ForecastRemoteDataSource {
  final WeatherHttpClient _client;

  ForecastRemoteDataSourceImpl(this._client);

  @override
  Future<ForecastResponse> getForecast(String cityName) async {
    try {
      final response = await _client.get(
        '/forecast',
        queryParams: {'q': cityName, 'cnt': 40},
      );

      return ForecastResponse.fromJson(response);
    } on AppException {
      rethrow;
    } catch (e) {
      throw ServerException('Erreur lors de la récupération des prévisions');
    }
  }
}
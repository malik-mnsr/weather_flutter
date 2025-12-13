// lib/data/datasources/remote/weather_remote_data_source.dart
import 'package:flutter_weather_app/core/error/exceptions.dart';
import 'package:flutter_weather_app/data/datasources/remote/http_client.dart';
import 'package:flutter_weather_app/data/models/weather_response.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherResponse> getCurrentWeather(String cityName);
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final WeatherHttpClient _client;

  WeatherRemoteDataSourceImpl(this._client);

  @override
  Future<WeatherResponse> getCurrentWeather(String cityName) async {
    try {
      final response = await _client.get(
        '/weather',
        queryParams: {'q': cityName},
      );

      return WeatherResponse.fromJson(response);
    } on AppException {
      rethrow;
    } catch (e) {
      throw ServerException('Erreur lors de la récupération des données météo');
    }
  }
}

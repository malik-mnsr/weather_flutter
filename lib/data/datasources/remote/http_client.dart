// lib/data/datasources/remote/http_client.dart
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_weather_app/core/error/exceptions.dart';

class WeatherHttpClient {
  late final Dio _dio;

  WeatherHttpClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.openweathermap.org/data/2.5',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        queryParameters: {
          'units': 'metric',
          'lang': 'fr',
          'appid': dotenv.env['OPENWEATHER_API_KEY'],
        },
      ),
    );

    // Intercepteur pour le logging
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        error: true,
      ),
    );
  }

  Future<Map<String, dynamic>> get(
      String endpoint, {
        Map<String, dynamic>? queryParams,
      }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        endpoint,
        queryParameters: queryParams,
      );

      return _handleResponse(response);
    } on DioException catch (e) {
      throw _handleDioError(e);
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }

  Map<String, dynamic> _handleResponse(Response<Map<String, dynamic>> response) {
    if (response.statusCode == 200) {
      return response.data!;
    } else {
      throw ServerException('Code erreur: ${response.statusCode}');
    }
  }

  AppException _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException('Timeout de connexion');
      case DioExceptionType.badResponse:
        return _handleBadResponse(e.response!);
      case DioExceptionType.cancel:
        return NetworkException('Requête annulée');
      default:
        return NetworkException('Erreur réseau: ${e.message}');
    }
  }

  AppException _handleBadResponse(Response response) {
    final statusCode = response.statusCode;
    final data = response.data as Map<String, dynamic>?;
    final message = data?['message']?.toString() ?? 'Erreur inconnue';

    switch (statusCode) {
      case 401:
        return InvalidApiKeyException('Clé API invalide');
      case 404:
        return NotFoundException(message);
      case 429:
        return ServerException('Trop de requêtes. Réessayez plus tard.');
      case 500:
      case 502:
      case 503:
      case 504:
        return ServerException('Serveur indisponible. Réessayez plus tard.');
      default:
        return ServerException('Erreur $statusCode: $message');
    }
  }
}
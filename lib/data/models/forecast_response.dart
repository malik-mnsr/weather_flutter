import 'package:freezed_annotation/freezed_annotation.dart';
import 'weather_response.dart'; // WeatherInfo doit être défini ici

part 'forecast_response.freezed.dart';
part 'forecast_response.g.dart';

@freezed
class ForecastResponse with _$ForecastResponse {
  const factory ForecastResponse({
    required List<ForecastItem> list,
  }) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);
}

@freezed
class ForecastItem with _$ForecastItem {
  const factory ForecastItem({
    @JsonKey(name: 'dt') required int timestamp,
    @JsonKey(name: 'main') required ForecastMain main,
    @JsonKey(name: 'weather') required List<WeatherInfo> weather,
    @JsonKey(name: 'dt_txt') required String dateText,
  }) = _ForecastItem;

  factory ForecastItem.fromJson(Map<String, dynamic> json) =>
      _$ForecastItemFromJson(json);
}

@freezed
class ForecastMain with _$ForecastMain {
  const factory ForecastMain({
    required double temp,
    required int humidity,
  }) = _ForecastMain;

  factory ForecastMain.fromJson(Map<String, dynamic> json) =>
      _$ForecastMainFromJson(json);
}
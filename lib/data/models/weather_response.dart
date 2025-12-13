// lib/data/models/weather_response.dart
import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    required String name,
    @JsonKey(name: 'main') required WeatherMain main,
    @JsonKey(name: 'weather') required List<WeatherInfo> weather,
    @JsonKey(name: 'wind') required Wind wind,
    @JsonKey(name: 'dt') required int timestamp,
    @JsonKey(name: 'rain') Rain? rain,
    @JsonKey(name: 'snow') Snow? snow,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
class WeatherMain with _$WeatherMain {
  const factory WeatherMain({
    required double temp,
    required int humidity,
  }) = _WeatherMain;

  factory WeatherMain.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainFromJson(json);
}

@freezed
class WeatherInfo with _$WeatherInfo {
  const factory WeatherInfo({
    required String description,
    required String icon,
  }) = _WeatherInfo;

  factory WeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$WeatherInfoFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind({
    required double speed,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
class Rain with _$Rain {
  const factory Rain({
    @JsonKey(name: '1h') double? oneHour,
    @JsonKey(name: '3h') double? threeHours,
  }) = _Rain;

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}

@freezed
class Snow with _$Snow {
  const factory Snow({
    @JsonKey(name: '1h') double? oneHour,
    @JsonKey(name: '3h') double? threeHours,
  }) = _Snow;

  factory Snow.fromJson(Map<String, dynamic> json) => _$SnowFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastResponseImpl _$$ForecastResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastResponseImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => ForecastItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ForecastResponseImplToJson(
        _$ForecastResponseImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$ForecastItemImpl _$$ForecastItemImplFromJson(Map<String, dynamic> json) =>
    _$ForecastItemImpl(
      timestamp: (json['dt'] as num).toInt(),
      main: ForecastMain.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => WeatherInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateText: json['dt_txt'] as String,
    );

Map<String, dynamic> _$$ForecastItemImplToJson(_$ForecastItemImpl instance) =>
    <String, dynamic>{
      'dt': instance.timestamp,
      'main': instance.main,
      'weather': instance.weather,
      'dt_txt': instance.dateText,
    };

_$ForecastMainImpl _$$ForecastMainImplFromJson(Map<String, dynamic> json) =>
    _$ForecastMainImpl(
      temp: (json['temp'] as num).toDouble(),
      humidity: (json['humidity'] as num).toInt(),
    );

Map<String, dynamic> _$$ForecastMainImplToJson(_$ForecastMainImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'humidity': instance.humidity,
    };

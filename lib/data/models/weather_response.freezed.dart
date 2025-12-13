// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  WeatherMain get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<WeatherInfo> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind')
  Wind get wind => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt')
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain')
  Rain? get rain => throw _privateConstructorUsedError;
  @JsonKey(name: 'snow')
  Snow? get snow => throw _privateConstructorUsedError;

  /// Serializes this WeatherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'main') WeatherMain main,
      @JsonKey(name: 'weather') List<WeatherInfo> weather,
      @JsonKey(name: 'wind') Wind wind,
      @JsonKey(name: 'dt') int timestamp,
      @JsonKey(name: 'rain') Rain? rain,
      @JsonKey(name: 'snow') Snow? snow});

  $WeatherMainCopyWith<$Res> get main;
  $WindCopyWith<$Res> get wind;
  $RainCopyWith<$Res>? get rain;
  $SnowCopyWith<$Res>? get snow;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
    Object? timestamp = null,
    Object? rain = freezed,
    Object? snow = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMain,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Snow?,
    ) as $Val);
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherMainCopyWith<$Res> get main {
    return $WeatherMainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RainCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SnowCopyWith<$Res>? get snow {
    if (_value.snow == null) {
      return null;
    }

    return $SnowCopyWith<$Res>(_value.snow!, (value) {
      return _then(_value.copyWith(snow: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherResponseImplCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$WeatherResponseImplCopyWith(_$WeatherResponseImpl value,
          $Res Function(_$WeatherResponseImpl) then) =
      __$$WeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'main') WeatherMain main,
      @JsonKey(name: 'weather') List<WeatherInfo> weather,
      @JsonKey(name: 'wind') Wind wind,
      @JsonKey(name: 'dt') int timestamp,
      @JsonKey(name: 'rain') Rain? rain,
      @JsonKey(name: 'snow') Snow? snow});

  @override
  $WeatherMainCopyWith<$Res> get main;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $RainCopyWith<$Res>? get rain;
  @override
  $SnowCopyWith<$Res>? get snow;
}

/// @nodoc
class __$$WeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$WeatherResponseImpl>
    implements _$$WeatherResponseImplCopyWith<$Res> {
  __$$WeatherResponseImplCopyWithImpl(
      _$WeatherResponseImpl _value, $Res Function(_$WeatherResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? main = null,
    Object? weather = null,
    Object? wind = null,
    Object? timestamp = null,
    Object? rain = freezed,
    Object? snow = freezed,
  }) {
    return _then(_$WeatherResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherMain,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      wind: null == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Snow?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseImpl implements _WeatherResponse {
  const _$WeatherResponseImpl(
      {required this.name,
      @JsonKey(name: 'main') required this.main,
      @JsonKey(name: 'weather') required final List<WeatherInfo> weather,
      @JsonKey(name: 'wind') required this.wind,
      @JsonKey(name: 'dt') required this.timestamp,
      @JsonKey(name: 'rain') this.rain,
      @JsonKey(name: 'snow') this.snow})
      : _weather = weather;

  factory _$WeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'main')
  final WeatherMain main;
  final List<WeatherInfo> _weather;
  @override
  @JsonKey(name: 'weather')
  List<WeatherInfo> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: 'wind')
  final Wind wind;
  @override
  @JsonKey(name: 'dt')
  final int timestamp;
  @override
  @JsonKey(name: 'rain')
  final Rain? rain;
  @override
  @JsonKey(name: 'snow')
  final Snow? snow;

  @override
  String toString() {
    return 'WeatherResponse(name: $name, main: $main, weather: $weather, wind: $wind, timestamp: $timestamp, rain: $rain, snow: $snow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.snow, snow) || other.snow == snow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      main,
      const DeepCollectionEquality().hash(_weather),
      wind,
      timestamp,
      rain,
      snow);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      __$$WeatherResponseImplCopyWithImpl<_$WeatherResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse(
      {required final String name,
      @JsonKey(name: 'main') required final WeatherMain main,
      @JsonKey(name: 'weather') required final List<WeatherInfo> weather,
      @JsonKey(name: 'wind') required final Wind wind,
      @JsonKey(name: 'dt') required final int timestamp,
      @JsonKey(name: 'rain') final Rain? rain,
      @JsonKey(name: 'snow') final Snow? snow}) = _$WeatherResponseImpl;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'main')
  WeatherMain get main;
  @override
  @JsonKey(name: 'weather')
  List<WeatherInfo> get weather;
  @override
  @JsonKey(name: 'wind')
  Wind get wind;
  @override
  @JsonKey(name: 'dt')
  int get timestamp;
  @override
  @JsonKey(name: 'rain')
  Rain? get rain;
  @override
  @JsonKey(name: 'snow')
  Snow? get snow;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherMain _$WeatherMainFromJson(Map<String, dynamic> json) {
  return _WeatherMain.fromJson(json);
}

/// @nodoc
mixin _$WeatherMain {
  double get temp => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  /// Serializes this WeatherMain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherMain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherMainCopyWith<WeatherMain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherMainCopyWith<$Res> {
  factory $WeatherMainCopyWith(
          WeatherMain value, $Res Function(WeatherMain) then) =
      _$WeatherMainCopyWithImpl<$Res, WeatherMain>;
  @useResult
  $Res call({double temp, int humidity});
}

/// @nodoc
class _$WeatherMainCopyWithImpl<$Res, $Val extends WeatherMain>
    implements $WeatherMainCopyWith<$Res> {
  _$WeatherMainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherMain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherMainImplCopyWith<$Res>
    implements $WeatherMainCopyWith<$Res> {
  factory _$$WeatherMainImplCopyWith(
          _$WeatherMainImpl value, $Res Function(_$WeatherMainImpl) then) =
      __$$WeatherMainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temp, int humidity});
}

/// @nodoc
class __$$WeatherMainImplCopyWithImpl<$Res>
    extends _$WeatherMainCopyWithImpl<$Res, _$WeatherMainImpl>
    implements _$$WeatherMainImplCopyWith<$Res> {
  __$$WeatherMainImplCopyWithImpl(
      _$WeatherMainImpl _value, $Res Function(_$WeatherMainImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherMain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? humidity = null,
  }) {
    return _then(_$WeatherMainImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherMainImpl implements _WeatherMain {
  const _$WeatherMainImpl({required this.temp, required this.humidity});

  factory _$WeatherMainImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherMainImplFromJson(json);

  @override
  final double temp;
  @override
  final int humidity;

  @override
  String toString() {
    return 'WeatherMain(temp: $temp, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherMainImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, humidity);

  /// Create a copy of WeatherMain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherMainImplCopyWith<_$WeatherMainImpl> get copyWith =>
      __$$WeatherMainImplCopyWithImpl<_$WeatherMainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherMainImplToJson(
      this,
    );
  }
}

abstract class _WeatherMain implements WeatherMain {
  const factory _WeatherMain(
      {required final double temp,
      required final int humidity}) = _$WeatherMainImpl;

  factory _WeatherMain.fromJson(Map<String, dynamic> json) =
      _$WeatherMainImpl.fromJson;

  @override
  double get temp;
  @override
  int get humidity;

  /// Create a copy of WeatherMain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherMainImplCopyWith<_$WeatherMainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherInfo _$WeatherInfoFromJson(Map<String, dynamic> json) {
  return _WeatherInfo.fromJson(json);
}

/// @nodoc
mixin _$WeatherInfo {
  String get description => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  /// Serializes this WeatherInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherInfoCopyWith<WeatherInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherInfoCopyWith<$Res> {
  factory $WeatherInfoCopyWith(
          WeatherInfo value, $Res Function(WeatherInfo) then) =
      _$WeatherInfoCopyWithImpl<$Res, WeatherInfo>;
  @useResult
  $Res call({String description, String icon});
}

/// @nodoc
class _$WeatherInfoCopyWithImpl<$Res, $Val extends WeatherInfo>
    implements $WeatherInfoCopyWith<$Res> {
  _$WeatherInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherInfoImplCopyWith<$Res>
    implements $WeatherInfoCopyWith<$Res> {
  factory _$$WeatherInfoImplCopyWith(
          _$WeatherInfoImpl value, $Res Function(_$WeatherInfoImpl) then) =
      __$$WeatherInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String icon});
}

/// @nodoc
class __$$WeatherInfoImplCopyWithImpl<$Res>
    extends _$WeatherInfoCopyWithImpl<$Res, _$WeatherInfoImpl>
    implements _$$WeatherInfoImplCopyWith<$Res> {
  __$$WeatherInfoImplCopyWithImpl(
      _$WeatherInfoImpl _value, $Res Function(_$WeatherInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherInfoImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherInfoImpl implements _WeatherInfo {
  const _$WeatherInfoImpl({required this.description, required this.icon});

  factory _$WeatherInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherInfoImplFromJson(json);

  @override
  final String description;
  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherInfo(description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherInfoImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description, icon);

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherInfoImplCopyWith<_$WeatherInfoImpl> get copyWith =>
      __$$WeatherInfoImplCopyWithImpl<_$WeatherInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherInfoImplToJson(
      this,
    );
  }
}

abstract class _WeatherInfo implements WeatherInfo {
  const factory _WeatherInfo(
      {required final String description,
      required final String icon}) = _$WeatherInfoImpl;

  factory _WeatherInfo.fromJson(Map<String, dynamic> json) =
      _$WeatherInfoImpl.fromJson;

  @override
  String get description;
  @override
  String get icon;

  /// Create a copy of WeatherInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherInfoImplCopyWith<_$WeatherInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Wind _$WindFromJson(Map<String, dynamic> json) {
  return _Wind.fromJson(json);
}

/// @nodoc
mixin _$Wind {
  double get speed => throw _privateConstructorUsedError;

  /// Serializes this Wind to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WindCopyWith<Wind> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WindCopyWith<$Res> {
  factory $WindCopyWith(Wind value, $Res Function(Wind) then) =
      _$WindCopyWithImpl<$Res, Wind>;
  @useResult
  $Res call({double speed});
}

/// @nodoc
class _$WindCopyWithImpl<$Res, $Val extends Wind>
    implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WindImplCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$$WindImplCopyWith(
          _$WindImpl value, $Res Function(_$WindImpl) then) =
      __$$WindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed});
}

/// @nodoc
class __$$WindImplCopyWithImpl<$Res>
    extends _$WindCopyWithImpl<$Res, _$WindImpl>
    implements _$$WindImplCopyWith<$Res> {
  __$$WindImplCopyWithImpl(_$WindImpl _value, $Res Function(_$WindImpl) _then)
      : super(_value, _then);

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_$WindImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WindImpl implements _Wind {
  const _$WindImpl({required this.speed});

  factory _$WindImpl.fromJson(Map<String, dynamic> json) =>
      _$$WindImplFromJson(json);

  @override
  final double speed;

  @override
  String toString() {
    return 'Wind(speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WindImpl &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed);

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WindImplCopyWith<_$WindImpl> get copyWith =>
      __$$WindImplCopyWithImpl<_$WindImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WindImplToJson(
      this,
    );
  }
}

abstract class _Wind implements Wind {
  const factory _Wind({required final double speed}) = _$WindImpl;

  factory _Wind.fromJson(Map<String, dynamic> json) = _$WindImpl.fromJson;

  @override
  double get speed;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WindImplCopyWith<_$WindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rain _$RainFromJson(Map<String, dynamic> json) {
  return _Rain.fromJson(json);
}

/// @nodoc
mixin _$Rain {
  @JsonKey(name: '1h')
  double? get oneHour => throw _privateConstructorUsedError;
  @JsonKey(name: '3h')
  double? get threeHours => throw _privateConstructorUsedError;

  /// Serializes this Rain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RainCopyWith<Rain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainCopyWith<$Res> {
  factory $RainCopyWith(Rain value, $Res Function(Rain) then) =
      _$RainCopyWithImpl<$Res, Rain>;
  @useResult
  $Res call(
      {@JsonKey(name: '1h') double? oneHour,
      @JsonKey(name: '3h') double? threeHours});
}

/// @nodoc
class _$RainCopyWithImpl<$Res, $Val extends Rain>
    implements $RainCopyWith<$Res> {
  _$RainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oneHour = freezed,
    Object? threeHours = freezed,
  }) {
    return _then(_value.copyWith(
      oneHour: freezed == oneHour
          ? _value.oneHour
          : oneHour // ignore: cast_nullable_to_non_nullable
              as double?,
      threeHours: freezed == threeHours
          ? _value.threeHours
          : threeHours // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RainImplCopyWith<$Res> implements $RainCopyWith<$Res> {
  factory _$$RainImplCopyWith(
          _$RainImpl value, $Res Function(_$RainImpl) then) =
      __$$RainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '1h') double? oneHour,
      @JsonKey(name: '3h') double? threeHours});
}

/// @nodoc
class __$$RainImplCopyWithImpl<$Res>
    extends _$RainCopyWithImpl<$Res, _$RainImpl>
    implements _$$RainImplCopyWith<$Res> {
  __$$RainImplCopyWithImpl(_$RainImpl _value, $Res Function(_$RainImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oneHour = freezed,
    Object? threeHours = freezed,
  }) {
    return _then(_$RainImpl(
      oneHour: freezed == oneHour
          ? _value.oneHour
          : oneHour // ignore: cast_nullable_to_non_nullable
              as double?,
      threeHours: freezed == threeHours
          ? _value.threeHours
          : threeHours // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RainImpl implements _Rain {
  const _$RainImpl(
      {@JsonKey(name: '1h') this.oneHour,
      @JsonKey(name: '3h') this.threeHours});

  factory _$RainImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainImplFromJson(json);

  @override
  @JsonKey(name: '1h')
  final double? oneHour;
  @override
  @JsonKey(name: '3h')
  final double? threeHours;

  @override
  String toString() {
    return 'Rain(oneHour: $oneHour, threeHours: $threeHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainImpl &&
            (identical(other.oneHour, oneHour) || other.oneHour == oneHour) &&
            (identical(other.threeHours, threeHours) ||
                other.threeHours == threeHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oneHour, threeHours);

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RainImplCopyWith<_$RainImpl> get copyWith =>
      __$$RainImplCopyWithImpl<_$RainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainImplToJson(
      this,
    );
  }
}

abstract class _Rain implements Rain {
  const factory _Rain(
      {@JsonKey(name: '1h') final double? oneHour,
      @JsonKey(name: '3h') final double? threeHours}) = _$RainImpl;

  factory _Rain.fromJson(Map<String, dynamic> json) = _$RainImpl.fromJson;

  @override
  @JsonKey(name: '1h')
  double? get oneHour;
  @override
  @JsonKey(name: '3h')
  double? get threeHours;

  /// Create a copy of Rain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RainImplCopyWith<_$RainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Snow _$SnowFromJson(Map<String, dynamic> json) {
  return _Snow.fromJson(json);
}

/// @nodoc
mixin _$Snow {
  @JsonKey(name: '1h')
  double? get oneHour => throw _privateConstructorUsedError;
  @JsonKey(name: '3h')
  double? get threeHours => throw _privateConstructorUsedError;

  /// Serializes this Snow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnowCopyWith<Snow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnowCopyWith<$Res> {
  factory $SnowCopyWith(Snow value, $Res Function(Snow) then) =
      _$SnowCopyWithImpl<$Res, Snow>;
  @useResult
  $Res call(
      {@JsonKey(name: '1h') double? oneHour,
      @JsonKey(name: '3h') double? threeHours});
}

/// @nodoc
class _$SnowCopyWithImpl<$Res, $Val extends Snow>
    implements $SnowCopyWith<$Res> {
  _$SnowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oneHour = freezed,
    Object? threeHours = freezed,
  }) {
    return _then(_value.copyWith(
      oneHour: freezed == oneHour
          ? _value.oneHour
          : oneHour // ignore: cast_nullable_to_non_nullable
              as double?,
      threeHours: freezed == threeHours
          ? _value.threeHours
          : threeHours // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnowImplCopyWith<$Res> implements $SnowCopyWith<$Res> {
  factory _$$SnowImplCopyWith(
          _$SnowImpl value, $Res Function(_$SnowImpl) then) =
      __$$SnowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '1h') double? oneHour,
      @JsonKey(name: '3h') double? threeHours});
}

/// @nodoc
class __$$SnowImplCopyWithImpl<$Res>
    extends _$SnowCopyWithImpl<$Res, _$SnowImpl>
    implements _$$SnowImplCopyWith<$Res> {
  __$$SnowImplCopyWithImpl(_$SnowImpl _value, $Res Function(_$SnowImpl) _then)
      : super(_value, _then);

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oneHour = freezed,
    Object? threeHours = freezed,
  }) {
    return _then(_$SnowImpl(
      oneHour: freezed == oneHour
          ? _value.oneHour
          : oneHour // ignore: cast_nullable_to_non_nullable
              as double?,
      threeHours: freezed == threeHours
          ? _value.threeHours
          : threeHours // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SnowImpl implements _Snow {
  const _$SnowImpl(
      {@JsonKey(name: '1h') this.oneHour,
      @JsonKey(name: '3h') this.threeHours});

  factory _$SnowImpl.fromJson(Map<String, dynamic> json) =>
      _$$SnowImplFromJson(json);

  @override
  @JsonKey(name: '1h')
  final double? oneHour;
  @override
  @JsonKey(name: '3h')
  final double? threeHours;

  @override
  String toString() {
    return 'Snow(oneHour: $oneHour, threeHours: $threeHours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnowImpl &&
            (identical(other.oneHour, oneHour) || other.oneHour == oneHour) &&
            (identical(other.threeHours, threeHours) ||
                other.threeHours == threeHours));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oneHour, threeHours);

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnowImplCopyWith<_$SnowImpl> get copyWith =>
      __$$SnowImplCopyWithImpl<_$SnowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SnowImplToJson(
      this,
    );
  }
}

abstract class _Snow implements Snow {
  const factory _Snow(
      {@JsonKey(name: '1h') final double? oneHour,
      @JsonKey(name: '3h') final double? threeHours}) = _$SnowImpl;

  factory _Snow.fromJson(Map<String, dynamic> json) = _$SnowImpl.fromJson;

  @override
  @JsonKey(name: '1h')
  double? get oneHour;
  @override
  @JsonKey(name: '3h')
  double? get threeHours;

  /// Create a copy of Snow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnowImplCopyWith<_$SnowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) {
  return _ForecastResponse.fromJson(json);
}

/// @nodoc
mixin _$ForecastResponse {
  List<ForecastItem> get list => throw _privateConstructorUsedError;

  /// Serializes this ForecastResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastResponseCopyWith<ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastResponseCopyWith<$Res> {
  factory $ForecastResponseCopyWith(
          ForecastResponse value, $Res Function(ForecastResponse) then) =
      _$ForecastResponseCopyWithImpl<$Res, ForecastResponse>;
  @useResult
  $Res call({List<ForecastItem> list});
}

/// @nodoc
class _$ForecastResponseCopyWithImpl<$Res, $Val extends ForecastResponse>
    implements $ForecastResponseCopyWith<$Res> {
  _$ForecastResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForecastResponseImplCopyWith<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  factory _$$ForecastResponseImplCopyWith(_$ForecastResponseImpl value,
          $Res Function(_$ForecastResponseImpl) then) =
      __$$ForecastResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ForecastItem> list});
}

/// @nodoc
class __$$ForecastResponseImplCopyWithImpl<$Res>
    extends _$ForecastResponseCopyWithImpl<$Res, _$ForecastResponseImpl>
    implements _$$ForecastResponseImplCopyWith<$Res> {
  __$$ForecastResponseImplCopyWithImpl(_$ForecastResponseImpl _value,
      $Res Function(_$ForecastResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$ForecastResponseImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ForecastItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastResponseImpl implements _ForecastResponse {
  const _$ForecastResponseImpl({required final List<ForecastItem> list})
      : _list = list;

  factory _$ForecastResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastResponseImplFromJson(json);

  final List<ForecastItem> _list;
  @override
  List<ForecastItem> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ForecastResponse(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastResponseImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastResponseImplCopyWith<_$ForecastResponseImpl> get copyWith =>
      __$$ForecastResponseImplCopyWithImpl<_$ForecastResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastResponseImplToJson(
      this,
    );
  }
}

abstract class _ForecastResponse implements ForecastResponse {
  const factory _ForecastResponse({required final List<ForecastItem> list}) =
      _$ForecastResponseImpl;

  factory _ForecastResponse.fromJson(Map<String, dynamic> json) =
      _$ForecastResponseImpl.fromJson;

  @override
  List<ForecastItem> get list;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastResponseImplCopyWith<_$ForecastResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastItem _$ForecastItemFromJson(Map<String, dynamic> json) {
  return _ForecastItem.fromJson(json);
}

/// @nodoc
mixin _$ForecastItem {
  @JsonKey(name: 'dt')
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  ForecastMain get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<WeatherInfo> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_txt')
  String get dateText => throw _privateConstructorUsedError;

  /// Serializes this ForecastItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastItemCopyWith<ForecastItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastItemCopyWith<$Res> {
  factory $ForecastItemCopyWith(
          ForecastItem value, $Res Function(ForecastItem) then) =
      _$ForecastItemCopyWithImpl<$Res, ForecastItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int timestamp,
      @JsonKey(name: 'main') ForecastMain main,
      @JsonKey(name: 'weather') List<WeatherInfo> weather,
      @JsonKey(name: 'dt_txt') String dateText});

  $ForecastMainCopyWith<$Res> get main;
}

/// @nodoc
class _$ForecastItemCopyWithImpl<$Res, $Val extends ForecastItem>
    implements $ForecastItemCopyWith<$Res> {
  _$ForecastItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? main = null,
    Object? weather = null,
    Object? dateText = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as ForecastMain,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      dateText: null == dateText
          ? _value.dateText
          : dateText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastMainCopyWith<$Res> get main {
    return $ForecastMainCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastItemImplCopyWith<$Res>
    implements $ForecastItemCopyWith<$Res> {
  factory _$$ForecastItemImplCopyWith(
          _$ForecastItemImpl value, $Res Function(_$ForecastItemImpl) then) =
      __$$ForecastItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int timestamp,
      @JsonKey(name: 'main') ForecastMain main,
      @JsonKey(name: 'weather') List<WeatherInfo> weather,
      @JsonKey(name: 'dt_txt') String dateText});

  @override
  $ForecastMainCopyWith<$Res> get main;
}

/// @nodoc
class __$$ForecastItemImplCopyWithImpl<$Res>
    extends _$ForecastItemCopyWithImpl<$Res, _$ForecastItemImpl>
    implements _$$ForecastItemImplCopyWith<$Res> {
  __$$ForecastItemImplCopyWithImpl(
      _$ForecastItemImpl _value, $Res Function(_$ForecastItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? main = null,
    Object? weather = null,
    Object? dateText = null,
  }) {
    return _then(_$ForecastItemImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as ForecastMain,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherInfo>,
      dateText: null == dateText
          ? _value.dateText
          : dateText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastItemImpl implements _ForecastItem {
  const _$ForecastItemImpl(
      {@JsonKey(name: 'dt') required this.timestamp,
      @JsonKey(name: 'main') required this.main,
      @JsonKey(name: 'weather') required final List<WeatherInfo> weather,
      @JsonKey(name: 'dt_txt') required this.dateText})
      : _weather = weather;

  factory _$ForecastItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastItemImplFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int timestamp;
  @override
  @JsonKey(name: 'main')
  final ForecastMain main;
  final List<WeatherInfo> _weather;
  @override
  @JsonKey(name: 'weather')
  List<WeatherInfo> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: 'dt_txt')
  final String dateText;

  @override
  String toString() {
    return 'ForecastItem(timestamp: $timestamp, main: $main, weather: $weather, dateText: $dateText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastItemImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.dateText, dateText) ||
                other.dateText == dateText));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, main,
      const DeepCollectionEquality().hash(_weather), dateText);

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastItemImplCopyWith<_$ForecastItemImpl> get copyWith =>
      __$$ForecastItemImplCopyWithImpl<_$ForecastItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastItemImplToJson(
      this,
    );
  }
}

abstract class _ForecastItem implements ForecastItem {
  const factory _ForecastItem(
          {@JsonKey(name: 'dt') required final int timestamp,
          @JsonKey(name: 'main') required final ForecastMain main,
          @JsonKey(name: 'weather') required final List<WeatherInfo> weather,
          @JsonKey(name: 'dt_txt') required final String dateText}) =
      _$ForecastItemImpl;

  factory _ForecastItem.fromJson(Map<String, dynamic> json) =
      _$ForecastItemImpl.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get timestamp;
  @override
  @JsonKey(name: 'main')
  ForecastMain get main;
  @override
  @JsonKey(name: 'weather')
  List<WeatherInfo> get weather;
  @override
  @JsonKey(name: 'dt_txt')
  String get dateText;

  /// Create a copy of ForecastItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastItemImplCopyWith<_$ForecastItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastMain _$ForecastMainFromJson(Map<String, dynamic> json) {
  return _ForecastMain.fromJson(json);
}

/// @nodoc
mixin _$ForecastMain {
  double get temp => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  /// Serializes this ForecastMain to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastMain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastMainCopyWith<ForecastMain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastMainCopyWith<$Res> {
  factory $ForecastMainCopyWith(
          ForecastMain value, $Res Function(ForecastMain) then) =
      _$ForecastMainCopyWithImpl<$Res, ForecastMain>;
  @useResult
  $Res call({double temp, int humidity});
}

/// @nodoc
class _$ForecastMainCopyWithImpl<$Res, $Val extends ForecastMain>
    implements $ForecastMainCopyWith<$Res> {
  _$ForecastMainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastMain
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
abstract class _$$ForecastMainImplCopyWith<$Res>
    implements $ForecastMainCopyWith<$Res> {
  factory _$$ForecastMainImplCopyWith(
          _$ForecastMainImpl value, $Res Function(_$ForecastMainImpl) then) =
      __$$ForecastMainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temp, int humidity});
}

/// @nodoc
class __$$ForecastMainImplCopyWithImpl<$Res>
    extends _$ForecastMainCopyWithImpl<$Res, _$ForecastMainImpl>
    implements _$$ForecastMainImplCopyWith<$Res> {
  __$$ForecastMainImplCopyWithImpl(
      _$ForecastMainImpl _value, $Res Function(_$ForecastMainImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastMain
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? humidity = null,
  }) {
    return _then(_$ForecastMainImpl(
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
class _$ForecastMainImpl implements _ForecastMain {
  const _$ForecastMainImpl({required this.temp, required this.humidity});

  factory _$ForecastMainImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastMainImplFromJson(json);

  @override
  final double temp;
  @override
  final int humidity;

  @override
  String toString() {
    return 'ForecastMain(temp: $temp, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastMainImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, humidity);

  /// Create a copy of ForecastMain
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastMainImplCopyWith<_$ForecastMainImpl> get copyWith =>
      __$$ForecastMainImplCopyWithImpl<_$ForecastMainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastMainImplToJson(
      this,
    );
  }
}

abstract class _ForecastMain implements ForecastMain {
  const factory _ForecastMain(
      {required final double temp,
      required final int humidity}) = _$ForecastMainImpl;

  factory _ForecastMain.fromJson(Map<String, dynamic> json) =
      _$ForecastMainImpl.fromJson;

  @override
  double get temp;
  @override
  int get humidity;

  /// Create a copy of ForecastMain
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastMainImplCopyWith<_$ForecastMainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

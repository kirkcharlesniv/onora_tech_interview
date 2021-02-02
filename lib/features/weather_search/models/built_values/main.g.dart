// GENERATED CODE - DO NOT MODIFY BY HAND

part of main;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Main> _$mainSerializer = new _$MainSerializer();

class _$MainSerializer implements StructuredSerializer<Main> {
  @override
  final Iterable<Type> types = const [Main, _$Main];
  @override
  final String wireName = 'Main';

  @override
  Iterable<Object> serialize(Serializers serializers, Main object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(double)),
      'feels_like',
      serializers.serialize(object.feelsLike,
          specifiedType: const FullType(double)),
      'temp_min',
      serializers.serialize(object.tempMin,
          specifiedType: const FullType(double)),
      'temp_max',
      serializers.serialize(object.tempMax,
          specifiedType: const FullType(double)),
      'pressure',
      serializers.serialize(object.pressure,
          specifiedType: const FullType(int)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Main deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_min':
          result.tempMin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_max':
          result.tempMax = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Main extends Main {
  @override
  final double temp;
  @override
  final double feelsLike;
  @override
  final double tempMin;
  @override
  final double tempMax;
  @override
  final int pressure;
  @override
  final int humidity;

  factory _$Main([void Function(MainBuilder) updates]) =>
      (new MainBuilder()..update(updates)).build();

  _$Main._(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity})
      : super._() {
    if (temp == null) {
      throw new BuiltValueNullFieldError('Main', 'temp');
    }
    if (feelsLike == null) {
      throw new BuiltValueNullFieldError('Main', 'feelsLike');
    }
    if (tempMin == null) {
      throw new BuiltValueNullFieldError('Main', 'tempMin');
    }
    if (tempMax == null) {
      throw new BuiltValueNullFieldError('Main', 'tempMax');
    }
    if (pressure == null) {
      throw new BuiltValueNullFieldError('Main', 'pressure');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('Main', 'humidity');
    }
  }

  @override
  Main rebuild(void Function(MainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainBuilder toBuilder() => new MainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Main &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        tempMin == other.tempMin &&
        tempMax == other.tempMax &&
        pressure == other.pressure &&
        humidity == other.humidity;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, temp.hashCode), feelsLike.hashCode),
                    tempMin.hashCode),
                tempMax.hashCode),
            pressure.hashCode),
        humidity.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Main')
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('tempMin', tempMin)
          ..add('tempMax', tempMax)
          ..add('pressure', pressure)
          ..add('humidity', humidity))
        .toString();
  }
}

class MainBuilder implements Builder<Main, MainBuilder> {
  _$Main _$v;

  double _temp;
  double get temp => _$this._temp;
  set temp(double temp) => _$this._temp = temp;

  double _feelsLike;
  double get feelsLike => _$this._feelsLike;
  set feelsLike(double feelsLike) => _$this._feelsLike = feelsLike;

  double _tempMin;
  double get tempMin => _$this._tempMin;
  set tempMin(double tempMin) => _$this._tempMin = tempMin;

  double _tempMax;
  double get tempMax => _$this._tempMax;
  set tempMax(double tempMax) => _$this._tempMax = tempMax;

  int _pressure;
  int get pressure => _$this._pressure;
  set pressure(int pressure) => _$this._pressure = pressure;

  int _humidity;
  int get humidity => _$this._humidity;
  set humidity(int humidity) => _$this._humidity = humidity;

  MainBuilder();

  MainBuilder get _$this {
    if (_$v != null) {
      _temp = _$v.temp;
      _feelsLike = _$v.feelsLike;
      _tempMin = _$v.tempMin;
      _tempMax = _$v.tempMax;
      _pressure = _$v.pressure;
      _humidity = _$v.humidity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Main other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Main;
  }

  @override
  void update(void Function(MainBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Main build() {
    final _$result = _$v ??
        new _$Main._(
            temp: temp,
            feelsLike: feelsLike,
            tempMin: tempMin,
            tempMax: tempMax,
            pressure: pressure,
            humidity: humidity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

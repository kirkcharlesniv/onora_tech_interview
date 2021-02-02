// GENERATED CODE - DO NOT MODIFY BY HAND

part of built_weather_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BuiltWeatherData> _$builtWeatherDataSerializer =
    new _$BuiltWeatherDataSerializer();

class _$BuiltWeatherDataSerializer
    implements StructuredSerializer<BuiltWeatherData> {
  @override
  final Iterable<Type> types = const [BuiltWeatherData, _$BuiltWeatherData];
  @override
  final String wireName = 'BuiltWeatherData';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltWeatherData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'coord',
      serializers.serialize(object.coord, specifiedType: const FullType(Coord)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Weather)])),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(Main)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(int)),
      'wind',
      serializers.serialize(object.wind, specifiedType: const FullType(Wind)),
      'sys',
      serializers.serialize(object.sys, specifiedType: const FullType(Sys)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  BuiltWeatherData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltWeatherDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'coord':
          result.coord.replace(serializers.deserialize(value,
              specifiedType: const FullType(Coord)) as Coord);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Weather)]))
              as BuiltList<Object>);
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
              specifiedType: const FullType(Main)) as Main);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wind':
          result.wind.replace(serializers.deserialize(value,
              specifiedType: const FullType(Wind)) as Wind);
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sys)) as Sys);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BuiltWeatherData extends BuiltWeatherData {
  @override
  final Coord coord;
  @override
  final BuiltList<Weather> weather;
  @override
  final Main main;
  @override
  final int visibility;
  @override
  final Wind wind;
  @override
  final Sys sys;
  @override
  final String name;

  factory _$BuiltWeatherData(
          [void Function(BuiltWeatherDataBuilder) updates]) =>
      (new BuiltWeatherDataBuilder()..update(updates)).build();

  _$BuiltWeatherData._(
      {this.coord,
      this.weather,
      this.main,
      this.visibility,
      this.wind,
      this.sys,
      this.name})
      : super._() {
    if (coord == null) {
      throw new BuiltValueNullFieldError('BuiltWeatherData', 'coord');
    }
    if (weather == null) {
      throw new BuiltValueNullFieldError('BuiltWeatherData', 'weather');
    }
    if (main == null) {
      throw new BuiltValueNullFieldError('BuiltWeatherData', 'main');
    }
    if (visibility == null) {
      throw new BuiltValueNullFieldError('BuiltWeatherData', 'visibility');
    }
    if (wind == null) {
      throw new BuiltValueNullFieldError('BuiltWeatherData', 'wind');
    }
    if (sys == null) {
      throw new BuiltValueNullFieldError('BuiltWeatherData', 'sys');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('BuiltWeatherData', 'name');
    }
  }

  @override
  BuiltWeatherData rebuild(void Function(BuiltWeatherDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltWeatherDataBuilder toBuilder() =>
      new BuiltWeatherDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltWeatherData &&
        coord == other.coord &&
        weather == other.weather &&
        main == other.main &&
        visibility == other.visibility &&
        wind == other.wind &&
        sys == other.sys &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, coord.hashCode), weather.hashCode),
                        main.hashCode),
                    visibility.hashCode),
                wind.hashCode),
            sys.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltWeatherData')
          ..add('coord', coord)
          ..add('weather', weather)
          ..add('main', main)
          ..add('visibility', visibility)
          ..add('wind', wind)
          ..add('sys', sys)
          ..add('name', name))
        .toString();
  }
}

class BuiltWeatherDataBuilder
    implements Builder<BuiltWeatherData, BuiltWeatherDataBuilder> {
  _$BuiltWeatherData _$v;

  CoordBuilder _coord;
  CoordBuilder get coord => _$this._coord ??= new CoordBuilder();
  set coord(CoordBuilder coord) => _$this._coord = coord;

  ListBuilder<Weather> _weather;
  ListBuilder<Weather> get weather =>
      _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather> weather) => _$this._weather = weather;

  MainBuilder _main;
  MainBuilder get main => _$this._main ??= new MainBuilder();
  set main(MainBuilder main) => _$this._main = main;

  int _visibility;
  int get visibility => _$this._visibility;
  set visibility(int visibility) => _$this._visibility = visibility;

  WindBuilder _wind;
  WindBuilder get wind => _$this._wind ??= new WindBuilder();
  set wind(WindBuilder wind) => _$this._wind = wind;

  SysBuilder _sys;
  SysBuilder get sys => _$this._sys ??= new SysBuilder();
  set sys(SysBuilder sys) => _$this._sys = sys;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  BuiltWeatherDataBuilder();

  BuiltWeatherDataBuilder get _$this {
    if (_$v != null) {
      _coord = _$v.coord?.toBuilder();
      _weather = _$v.weather?.toBuilder();
      _main = _$v.main?.toBuilder();
      _visibility = _$v.visibility;
      _wind = _$v.wind?.toBuilder();
      _sys = _$v.sys?.toBuilder();
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltWeatherData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BuiltWeatherData;
  }

  @override
  void update(void Function(BuiltWeatherDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltWeatherData build() {
    _$BuiltWeatherData _$result;
    try {
      _$result = _$v ??
          new _$BuiltWeatherData._(
              coord: coord.build(),
              weather: weather.build(),
              main: main.build(),
              visibility: visibility,
              wind: wind.build(),
              sys: sys.build(),
              name: name);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'coord';
        coord.build();
        _$failedField = 'weather';
        weather.build();
        _$failedField = 'main';
        main.build();

        _$failedField = 'wind';
        wind.build();
        _$failedField = 'sys';
        sys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltWeatherData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

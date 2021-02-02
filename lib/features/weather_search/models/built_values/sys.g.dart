// GENERATED CODE - DO NOT MODIFY BY HAND

part of sys;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Sys> _$sysSerializer = new _$SysSerializer();

class _$SysSerializer implements StructuredSerializer<Sys> {
  @override
  final Iterable<Type> types = const [Sys, _$Sys];
  @override
  final String wireName = 'Sys';

  @override
  Iterable<Object> serialize(Serializers serializers, Sys object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'sunrise',
      serializers.serialize(object.sunrise, specifiedType: const FullType(int)),
      'sunset',
      serializers.serialize(object.sunset, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Sys deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SysBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Sys extends Sys {
  @override
  final String country;
  @override
  final int sunrise;
  @override
  final int sunset;

  factory _$Sys([void Function(SysBuilder) updates]) =>
      (new SysBuilder()..update(updates)).build();

  _$Sys._({this.country, this.sunrise, this.sunset}) : super._() {
    if (country == null) {
      throw new BuiltValueNullFieldError('Sys', 'country');
    }
    if (sunrise == null) {
      throw new BuiltValueNullFieldError('Sys', 'sunrise');
    }
    if (sunset == null) {
      throw new BuiltValueNullFieldError('Sys', 'sunset');
    }
  }

  @override
  Sys rebuild(void Function(SysBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SysBuilder toBuilder() => new SysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sys &&
        country == other.country &&
        sunrise == other.sunrise &&
        sunset == other.sunset;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, country.hashCode), sunrise.hashCode), sunset.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Sys')
          ..add('country', country)
          ..add('sunrise', sunrise)
          ..add('sunset', sunset))
        .toString();
  }
}

class SysBuilder implements Builder<Sys, SysBuilder> {
  _$Sys _$v;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  int _sunrise;
  int get sunrise => _$this._sunrise;
  set sunrise(int sunrise) => _$this._sunrise = sunrise;

  int _sunset;
  int get sunset => _$this._sunset;
  set sunset(int sunset) => _$this._sunset = sunset;

  SysBuilder();

  SysBuilder get _$this {
    if (_$v != null) {
      _country = _$v.country;
      _sunrise = _$v.sunrise;
      _sunset = _$v.sunset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sys other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Sys;
  }

  @override
  void update(void Function(SysBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Sys build() {
    final _$result =
        _$v ?? new _$Sys._(country: country, sunrise: sunrise, sunset: sunset);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

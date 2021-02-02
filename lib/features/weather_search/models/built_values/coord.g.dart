// GENERATED CODE - DO NOT MODIFY BY HAND

part of coord;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Coord> _$coordSerializer = new _$CoordSerializer();

class _$CoordSerializer implements StructuredSerializer<Coord> {
  @override
  final Iterable<Type> types = const [Coord, _$Coord];
  @override
  final String wireName = 'Coord';

  @override
  Iterable<Object> serialize(Serializers serializers, Coord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Coord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Coord extends Coord {
  @override
  final double lon;
  @override
  final double lat;

  factory _$Coord([void Function(CoordBuilder) updates]) =>
      (new CoordBuilder()..update(updates)).build();

  _$Coord._({this.lon, this.lat}) : super._() {
    if (lon == null) {
      throw new BuiltValueNullFieldError('Coord', 'lon');
    }
    if (lat == null) {
      throw new BuiltValueNullFieldError('Coord', 'lat');
    }
  }

  @override
  Coord rebuild(void Function(CoordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoordBuilder toBuilder() => new CoordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Coord && lon == other.lon && lat == other.lat;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lon.hashCode), lat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Coord')
          ..add('lon', lon)
          ..add('lat', lat))
        .toString();
  }
}

class CoordBuilder implements Builder<Coord, CoordBuilder> {
  _$Coord _$v;

  double _lon;
  double get lon => _$this._lon;
  set lon(double lon) => _$this._lon = lon;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  CoordBuilder();

  CoordBuilder get _$this {
    if (_$v != null) {
      _lon = _$v.lon;
      _lat = _$v.lat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Coord other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Coord;
  }

  @override
  void update(void Function(CoordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Coord build() {
    final _$result = _$v ?? new _$Coord._(lon: lon, lat: lat);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

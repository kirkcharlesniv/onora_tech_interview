// GENERATED CODE - DO NOT MODIFY BY HAND

part of wind;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Wind> _$windSerializer = new _$WindSerializer();

class _$WindSerializer implements StructuredSerializer<Wind> {
  @override
  final Iterable<Type> types = const [Wind, _$Wind];
  @override
  final String wireName = 'Wind';

  @override
  Iterable<Object> serialize(Serializers serializers, Wind object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'speed',
      serializers.serialize(object.speed,
          specifiedType: const FullType(double)),
      'deg',
      serializers.serialize(object.deg, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Wind deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WindBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'speed':
          result.speed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'deg':
          result.deg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Wind extends Wind {
  @override
  final double speed;
  @override
  final int deg;

  factory _$Wind([void Function(WindBuilder) updates]) =>
      (new WindBuilder()..update(updates)).build();

  _$Wind._({this.speed, this.deg}) : super._() {
    if (speed == null) {
      throw new BuiltValueNullFieldError('Wind', 'speed');
    }
    if (deg == null) {
      throw new BuiltValueNullFieldError('Wind', 'deg');
    }
  }

  @override
  Wind rebuild(void Function(WindBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindBuilder toBuilder() => new WindBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Wind && speed == other.speed && deg == other.deg;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, speed.hashCode), deg.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Wind')
          ..add('speed', speed)
          ..add('deg', deg))
        .toString();
  }
}

class WindBuilder implements Builder<Wind, WindBuilder> {
  _$Wind _$v;

  double _speed;
  double get speed => _$this._speed;
  set speed(double speed) => _$this._speed = speed;

  int _deg;
  int get deg => _$this._deg;
  set deg(int deg) => _$this._deg = deg;

  WindBuilder();

  WindBuilder get _$this {
    if (_$v != null) {
      _speed = _$v.speed;
      _deg = _$v.deg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Wind other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Wind;
  }

  @override
  void update(void Function(WindBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Wind build() {
    final _$result = _$v ?? new _$Wind._(speed: speed, deg: deg);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

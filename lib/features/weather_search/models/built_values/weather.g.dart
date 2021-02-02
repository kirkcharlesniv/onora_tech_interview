// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'main',
      serializers.serialize(object.main, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'main':
          result.main = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Weather extends Weather {
  @override
  final int id;
  @override
  final String main;
  @override
  final String description;
  @override
  final String icon;

  factory _$Weather([void Function(WeatherBuilder) updates]) =>
      (new WeatherBuilder()..update(updates)).build();

  _$Weather._({this.id, this.main, this.description, this.icon}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Weather', 'id');
    }
    if (main == null) {
      throw new BuiltValueNullFieldError('Weather', 'main');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Weather', 'description');
    }
    if (icon == null) {
      throw new BuiltValueNullFieldError('Weather', 'icon');
    }
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        id == other.id &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), main.hashCode), description.hashCode),
        icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('id', id)
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _main;
  String get main => _$this._main;
  set main(String main) => _$this._main = main;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  WeatherBuilder();

  WeatherBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _main = _$v.main;
      _description = _$v.description;
      _icon = _$v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            id: id, main: main, description: description, icon: icon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

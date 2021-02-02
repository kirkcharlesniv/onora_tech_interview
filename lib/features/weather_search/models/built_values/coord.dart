library coord;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:onora_tech_interview/core/serializers.dart';

part 'coord.g.dart';

abstract class Coord implements Built<Coord, CoordBuilder> {
  Coord._();

  factory Coord([updates(CoordBuilder b)]) = _$Coord;

  @BuiltValueField(wireName: 'lon')
  double get lon;
  @BuiltValueField(wireName: 'lat')
  double get lat;
  String toJson() {
    return json.encode(serializers.serializeWith(Coord.serializer, this));
  }

  static Coord fromJson(String jsonString) {
    return serializers.deserializeWith(
        Coord.serializer, json.decode(jsonString));
  }

  static Serializer<Coord> get serializer => _$coordSerializer;
}

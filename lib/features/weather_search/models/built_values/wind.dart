library wind;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:onora_tech_interview/core/serializers.dart';

part 'wind.g.dart';

abstract class Wind implements Built<Wind, WindBuilder> {
  Wind._();

  factory Wind([updates(WindBuilder b)]) = _$Wind;

  @BuiltValueField(wireName: 'speed')
  double get speed;
  @BuiltValueField(wireName: 'deg')
  int get deg;
  String toJson() {
    return json.encode(serializers.serializeWith(Wind.serializer, this));
  }

  static Wind fromJson(String jsonString) {
    return serializers.deserializeWith(
        Wind.serializer, json.decode(jsonString));
  }

  static Serializer<Wind> get serializer => _$windSerializer;
}

library weather;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:onora_tech_interview/core/serializers.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  Weather._();

  factory Weather([updates(WeatherBuilder b)]) = _$Weather;

  @BuiltValueField(wireName: 'id')
  int get id;
  @BuiltValueField(wireName: 'main')
  String get main;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'icon')
  String get icon;
  String toJson() {
    return json.encode(serializers.serializeWith(Weather.serializer, this));
  }

  static Weather fromJson(String jsonString) {
    return serializers.deserializeWith(
        Weather.serializer, json.decode(jsonString));
  }

  static Serializer<Weather> get serializer => _$weatherSerializer;
}

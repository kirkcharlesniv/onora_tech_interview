library built_weather_data;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:onora_tech_interview/core/serializers.dart';

import 'coord.dart';
import 'main.dart';
import 'sys.dart';
import 'weather.dart';
import 'wind.dart';

part 'built_weather_data.g.dart';

abstract class BuiltWeatherData
    implements Built<BuiltWeatherData, BuiltWeatherDataBuilder> {
  BuiltWeatherData._();

  factory BuiltWeatherData([updates(BuiltWeatherDataBuilder b)]) =
      _$BuiltWeatherData;

  @BuiltValueField(wireName: 'coord')
  Coord get coord;
  @BuiltValueField(wireName: 'weather')
  BuiltList<Weather> get weather;
  @BuiltValueField(wireName: 'main')
  Main get main;
  @BuiltValueField(wireName: 'visibility')
  int get visibility;
  @BuiltValueField(wireName: 'wind')
  Wind get wind;
  @BuiltValueField(wireName: 'sys')
  Sys get sys;
  @BuiltValueField(wireName: 'name')
  String get name;
  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltWeatherData.serializer, this));
  }

  static BuiltWeatherData fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltWeatherData.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltWeatherData> get serializer =>
      _$builtWeatherDataSerializer;
}

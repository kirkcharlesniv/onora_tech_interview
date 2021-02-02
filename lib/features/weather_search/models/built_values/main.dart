library main;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:onora_tech_interview/core/serializers.dart';

part 'main.g.dart';

abstract class Main implements Built<Main, MainBuilder> {
  Main._();

  factory Main([updates(MainBuilder b)]) = _$Main;

  @BuiltValueField(wireName: 'temp')
  double get temp;
  @BuiltValueField(wireName: 'feels_like')
  double get feelsLike;
  @BuiltValueField(wireName: 'temp_min')
  double get tempMin;
  @BuiltValueField(wireName: 'temp_max')
  double get tempMax;
  @BuiltValueField(wireName: 'pressure')
  int get pressure;
  @BuiltValueField(wireName: 'humidity')
  int get humidity;
  String toJson() {
    return json.encode(serializers.serializeWith(Main.serializer, this));
  }

  static Main fromJson(String jsonString) {
    return serializers.deserializeWith(
        Main.serializer, json.decode(jsonString));
  }

  static Serializer<Main> get serializer => _$mainSerializer;
}

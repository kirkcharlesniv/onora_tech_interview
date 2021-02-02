library sys;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:onora_tech_interview/core/serializers.dart';

part 'sys.g.dart';

abstract class Sys implements Built<Sys, SysBuilder> {
  Sys._();

  factory Sys([updates(SysBuilder b)]) = _$Sys;

  @BuiltValueField(wireName: 'country')
  String get country;
  @BuiltValueField(wireName: 'sunrise')
  int get sunrise;
  @BuiltValueField(wireName: 'sunset')
  int get sunset;
  String toJson() {
    return json.encode(serializers.serializeWith(Sys.serializer, this));
  }

  static Sys fromJson(String jsonString) {
    return serializers.deserializeWith(Sys.serializer, json.decode(jsonString));
  }

  static Serializer<Sys> get serializer => _$sysSerializer;
}

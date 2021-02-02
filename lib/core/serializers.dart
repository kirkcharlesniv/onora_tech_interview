library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:onora_tech_interview/features/weather_search/models/built_values/built_weather_data.dart';
import 'package:onora_tech_interview/features/weather_search/models/built_values/coord.dart';
import 'package:onora_tech_interview/features/weather_search/models/built_values/main.dart';
import 'package:onora_tech_interview/features/weather_search/models/built_values/sys.dart';
import 'package:onora_tech_interview/features/weather_search/models/built_values/weather.dart';
import 'package:onora_tech_interview/features/weather_search/models/built_values/wind.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  BuiltWeatherData,
  Coord,
  Main,
  Sys,
  Weather,
  Wind,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

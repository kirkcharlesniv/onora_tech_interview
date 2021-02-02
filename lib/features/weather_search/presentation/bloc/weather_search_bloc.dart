import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import '../../models/built_values/built_weather_data.dart';

part 'weather_search_event.dart';
part 'weather_search_state.dart';

class WeatherSearchBloc extends Bloc<WeatherSearchEvent, WeatherSearchState> {
  WeatherSearchBloc() : super(WeatherSearchInitial());

  @override
  Stream<WeatherSearchState> mapEventToState(
    WeatherSearchEvent event,
  ) async* {
    if (event is WeatherSearchTriggered) {
      Dio dio = new Dio();
      try {
        Response response = await dio
            .get("api.openweathermap.org/data/2.5/weather", queryParameters: {
          "q": event.city,
          "appid": "658e174916573a413b2f31b643a7b278"
        });

        BuiltWeatherData _weatherData =
            BuiltWeatherData.fromJson(json.encode(response.data));

        yield WeatherSearchLoaded(_weatherData);
      } on DioError catch (e) {
        yield WeatherSearchLoadFailure(
            e.response.statusCode, e.response.statusMessage);
      }
    } else if (event is WeatherSearchReset) {
      yield WeatherSearchInitial();
    }
  }
}

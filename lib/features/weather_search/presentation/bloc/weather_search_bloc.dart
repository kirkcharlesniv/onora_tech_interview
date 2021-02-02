import 'dart:async';

import 'package:bloc/bloc.dart';
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
      // TODO: Call to API
      // Emit State
    }
  }
}

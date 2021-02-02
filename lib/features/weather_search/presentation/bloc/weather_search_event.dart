part of 'weather_search_bloc.dart';

@immutable
abstract class WeatherSearchEvent {}

class WeatherSearchTriggered extends WeatherSearchEvent {
  final String city;

  WeatherSearchTriggered(this.city);
}

class WeatherSearchReset extends WeatherSearchEvent {}

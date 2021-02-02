part of 'weather_search_bloc.dart';

@immutable
abstract class WeatherSearchState {}

class WeatherSearchInitial extends WeatherSearchState {}

class WeatherSearchLoaded extends WeatherSearchState {
  final BuiltWeatherData weatherData;

  WeatherSearchLoaded(this.weatherData) : assert(weatherData != null);
}

class WeatherSearchLoadFailure extends WeatherSearchState {
  final int statusCode;
  final String message;

  WeatherSearchLoadFailure([this.statusCode, this.message]);
}

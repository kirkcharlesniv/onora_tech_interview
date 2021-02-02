part of 'city_input_cubit.dart';

class CityInputState {
  final CityInput cityInput;
  final FormzStatus status;
  final String message;

  CityInputState([
    this.cityInput,
    this.status,
    this.message,
  ]);

  CityInputState copyWith({
    CityInput cityInput,
    FormzStatus status,
    String message,
  }) =>
      CityInputState(cityInput ?? this.cityInput, status ?? this.status,
          message ?? this.message);
}

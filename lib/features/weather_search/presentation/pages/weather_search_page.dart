import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onora_tech_interview/features/weather_search/presentation/bloc/weather_search_bloc.dart';
import 'package:onora_tech_interview/features/weather_search/presentation/cubit/city_input_cubit.dart';
import 'package:formz/formz.dart';

class WeatherSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CityInputCubit, CityInputState>(
      builder: (context, inputState) {
        return BlocBuilder<WeatherSearchBloc, WeatherSearchState>(
          builder: (context, state) {
            if (state is WeatherSearchInitial) {
              return Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Text(
                    'Search Weather',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                body: Center(
                  child: cityInputField(context, inputState),
                ),
              );
            } else if (state is WeatherSearchLoadFailure) {
              return Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Text(
                    'Error Occured',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Center(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                              '${state.statusCode} error, ${state.message}'),
                        ),
                        FlatButton(
                            onPressed: () => context
                                .read<WeatherSearchBloc>()
                                .add(WeatherSearchReset()),
                            child: Text('Try Again.')),
                      ],
                    ),
                  ),
                ),
              );
            } else if (state is WeatherSearchLoaded) {
              return Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  title: Text(
                    'See ${state.weatherData.name} Weather',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                body: Center(
                  child: Column(
                    children: [
                      cityInputField(context, inputState),
                      Text(
                          'Weather Status: ${state.weatherData.weather.first.description}'),
                      Text(
                          'Temperature: ${(state.weatherData.main.temp * .1).toStringAsFixed(2)}C | Min: ${(state.weatherData.main.tempMin * .1).toStringAsFixed(2)}C | Max: ${(state.weatherData.main.tempMax * .1).toStringAsFixed(2)}C'),
                      Text(
                          'Temperature feels like it is ${(state.weatherData.main.feelsLike * .1).toStringAsFixed(2)}C '),
                    ],
                  ),
                ),
              );
            }

            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        );
      },
    );
  }

  Padding cityInputField(BuildContext context, CityInputState inputState) =>
      Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            TextField(
              key: const Key('weatherForm_cityInput_textField'),
              onChanged: (city) =>
                  context.read<CityInputCubit>().cityInputChanged(city),
              keyboardType: TextInputType.name,
              onEditingComplete: () => FocusScope.of(context).nextFocus(),
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                fillColor: Colors.grey[100],
                contentPadding: const EdgeInsets.all(18),
                labelText: 'City',
                errorText: inputState.cityInput.invalid
                    ? 'Please enter a city name.'
                    : null,
              ),
            ),
            FlatButton(
                onPressed:
                    inputState.status.isInvalid || inputState.status.isPure
                        ? null
                        : () => context.read<WeatherSearchBloc>().add(
                            WeatherSearchTriggered(inputState.cityInput.value)),
                child: Text('Search'))
          ],
        ),
      );
}

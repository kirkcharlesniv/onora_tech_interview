import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onora_tech_interview/features/weather_search/presentation/bloc/weather_search_bloc.dart';
import 'package:onora_tech_interview/features/weather_search/presentation/cubit/city_input_cubit.dart';

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
                  title: Text('Search Weather'),
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
                  title: Text('Error Occured'),
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
                        FlatButton(child: Text('An error has occured, reset.')),
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
                  title: Text('See ${state.weatherData.name} Weather'),
                ),
                body: Center(
                  child: cityInputField(context, inputState),
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

  Widget cityInputField(BuildContext context, CityInputState inputState) =>
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
          errorText:
              inputState.cityInput.invalid ? 'Please enter a city name.' : null,
        ),
      );
}

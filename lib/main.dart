import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onora_tech_interview/features/weather_search/presentation/cubit/city_input_cubit.dart';
import 'features/weather_search/presentation/pages/weather_search_page.dart';
import 'features/weather_search/presentation/bloc/weather_search_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Weather App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => WeatherSearchBloc(),
          ),
          BlocProvider(
            create: (context) => CityInputCubit(),
          ),
        ],
        child: WeatherSearchPage(),
      ),
    );
  }
}

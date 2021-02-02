import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import '../../models/formz/CityInput.dart';

part 'city_input_state.dart';

class CityInputCubit extends Cubit<CityInputState> {
  CityInputCubit() : super(CityInputState());

  void cityInputChanged(String value) {
    final city = CityInput.dirty(value: value);
    emit(state.copyWith(cityInput: city, status: Formz.validate([city])));
  }
}

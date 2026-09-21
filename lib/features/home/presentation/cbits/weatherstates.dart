// features/home/presentation/cbits/weatherstates.dart
import 'package:weather_app/features/home/data/models/weather_model.dart';

abstract class Weatherstates {}

class WeatherTnitialState extends Weatherstates {}

class WeatherLoadingState extends Weatherstates {}

class WeatherSuccessState extends Weatherstates {
  final WeatherModel wearther;

  WeatherSuccessState({required this.wearther});
}

class WeatherFailureState extends Weatherstates {}

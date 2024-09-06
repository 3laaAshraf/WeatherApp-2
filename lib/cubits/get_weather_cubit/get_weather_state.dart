import 'package:news_app/Classes/weather_class.dart';

class GetWeatherState {}

class WeatherLoadedState extends GetWeatherState {
  WeatherClass weatherObject;
  WeatherLoadedState({required this.weatherObject});
}

class NoWeatherState extends GetWeatherState {}

class WeatherFailureState extends GetWeatherState {
  String x;
  WeatherFailureState({required this.x});
}

class WeatherLoadingState extends GetWeatherState {}

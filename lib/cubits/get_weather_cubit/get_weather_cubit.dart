import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Classes/weather_class.dart';
import 'package:news_app/Services/weather_service.dart';
import 'package:news_app/cubits/get_weather_cubit/get_weather_state.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  late WeatherClass weatherClass;
  late String y;
  getWeather({required String cityName}) async {
    try {
      emit(WeatherLoadingState());
      weatherClass =
          await WeatherService(Dio()).getCurrentWeather(city: cityName);
      emit(WeatherLoadedState(weatherObject: weatherClass));
    } catch (e) {
      y = await WeatherService(Dio()).getCurrentWeather(city: cityName);
      emit(WeatherFailureState(x: y));
    }
  }
}

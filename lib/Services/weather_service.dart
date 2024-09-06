import 'package:dio/dio.dart';
import 'package:news_app/Classes/weather_class.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);
  dynamic getCurrentWeather({required String city}) async {
    try {
      Response response = await dio.get(
          'http://api.weatherapi.com/v1/forecast.json?key=ff760e6cc84349e8855141237242508&q=$city');
      WeatherClass weatherClass = WeatherClass.fromJson(response.data);
      return weatherClass;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'oops there was an error , try later';
      return errorMessage;
    } catch (e) {
      throw Exception('oops there was an error , try later');
    }
  }
}

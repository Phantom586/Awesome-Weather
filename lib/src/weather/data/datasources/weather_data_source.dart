import 'package:awesome_weather/src/weather/data/models/weather_model.dart';

abstract class WeatherDataSource {
  Future<WeatherEntityModel> fetchWeatherByCity({required String name});
}

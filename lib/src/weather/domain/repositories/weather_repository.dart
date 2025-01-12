import 'package:awesome_weather/core/utils/typedef.dart';
import 'package:awesome_weather/src/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  const WeatherRepository();

  ResponseFuture<WeatherEntity> fetchWeatherByCity({required String city});
}

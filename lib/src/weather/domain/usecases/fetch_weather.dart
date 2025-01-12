import 'package:awesome_weather/core/utils/typedef.dart';
import 'package:awesome_weather/src/weather/domain/repositories/weather_repository.dart';

class FetchWeather {
  const FetchWeather(this._repository);

  final WeatherRepository _repository;

  @override
  ResponseFuture call(String city) async =>
      _repository.fetchWeatherByCity(city: city);
}

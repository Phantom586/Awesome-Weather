import 'package:awesome_weather/src/weather/data/datasources/weather_data_source.dart';
import 'package:awesome_weather/src/weather/data/repositories/weather_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWeatherDataSource extends Mock implements WeatherDataSource {}

void main() {
  late WeatherDataSource weatherDataSource;
  late WeatherRepositoryImpl repositoryImpl;

  setUp(() {
    weatherDataSource = MockWeatherDataSource();
    repositoryImpl = WeatherRepositoryImpl(weatherDataSource);
  });
}

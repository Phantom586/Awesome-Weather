import 'package:awesome_weather/src/weather/domain/entities/weather.dart';
import 'package:awesome_weather/src/weather/domain/repositories/weather_repository.dart';
import 'package:awesome_weather/src/weather/domain/usecases/fetch_weather.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  late WeatherRepository repository;
  late FetchWeather fetchWeather;

  setUp(() {
    repository = MockWeatherRepository();
    fetchWeather = FetchWeather(repository);
  });

  final tResponse = WeatherEntity.dummy();

  test(
    'should call [WeatherRepository.fetchWeather] and return [WeatherEntity]',
    () async {
      when(
        () => repository.fetchWeatherByCity(city: 'any'),
      ).thenAnswer((_) async => Right(tResponse));

      final result = await fetchWeather('any');

      expect(result, equals(Right<dynamic, WeatherEntity>(tResponse)));
      verify(
        () => repository.fetchWeatherByCity(city: 'any'),
      ).called(1);
      verifyNoMoreInteractions(repository);
    },
  );
}

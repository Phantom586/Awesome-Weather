import 'package:awesome_weather/core/utils/typedef.dart';
import 'package:awesome_weather/src/weather/data/datasources/weather_data_source.dart';
import 'package:awesome_weather/src/weather/domain/entities/weather.dart';
import 'package:awesome_weather/src/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  const WeatherRepositoryImpl(this._dataSource);

  final WeatherDataSource _dataSource;

  @override
  ResponseFuture<WeatherEntity> fetchWeatherByCity({required String city}) {
    throw UnimplementedError();
  }
}

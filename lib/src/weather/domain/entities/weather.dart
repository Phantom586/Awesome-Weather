import 'package:equatable/equatable.dart';

class WeatherEntity extends Equatable {
  final Coord? coord;
  final List<Weather>? weather;
  final Main? main;

  const WeatherEntity({
    required this.coord,
    required this.weather,
    required this.main,
  });

  WeatherEntity.dummy()
      : this(
            coord: Coord.dummy(),
            weather: [Weather.dummy()],
            main: Main.dummy());

  @override
  List<Object?> get props => [coord];
}

class Coord extends Equatable {
  final double? lon;
  final double? lat;

  const Coord({
    required this.lon,
    required this.lat,
  });

  const Coord.dummy() : this(lat: 45.133, lon: 7.367);

  @override
  List<Object?> get props => [lat, lon];
}

class Main extends Equatable {
  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final int? pressure;
  final int? humidity;
  final int? seaLevel;
  final int? grndLevel;

  const Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  const Main.dummy()
      : this(
            temp: 284.2,
            feelsLike: 282.93,
            tempMin: 283.06,
            tempMax: 286.82,
            pressure: 1021,
            humidity: 60,
            seaLevel: 1021,
            grndLevel: 910);

  @override
  List<Object?> get props => [temp, humidity, pressure];
}

class Weather extends Equatable {
  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  const Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  const Weather.dummy()
      : this(id: 501, main: 'Rain', description: 'moderate rain', icon: '10d');

  @override
  List<Object?> get props => [id, main];
}

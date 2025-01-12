import 'package:awesome_weather/src/weather/domain/entities/weather.dart';

class WeatherEntityModel extends WeatherEntity {
  const WeatherEntityModel({
    required super.coord,
    required super.weather,
    required super.main,
  });

  WeatherEntityModel.dummy()
      : this(
            coord: CoordModel.dummy(),
            weather: [WeatherModel.dummy()],
            main: MainModel.dummy());

  factory WeatherEntityModel.fromJson(Map<String, dynamic> json) =>
      WeatherEntityModel(
        coord: CoordModel.fromJson(json["coord"]),
        weather: List<Weather>.from(
            json["weather"].map((x) => WeatherModel.fromJson(x))),
        main: MainModel.fromJson(json["main"]),
      );

  Map<String, dynamic> toJson() => {
        "coord": CoordModel(lon: coord?.lon, lat: coord?.lat).toJson(),
        "weather": List<dynamic>.from(weather!.map((x) => WeatherModel(
                id: x.id,
                main: x.main,
                description: x.description,
                icon: x.icon)
            .toJson())),
        "main": MainModel(
                temp: main?.temp,
                feelsLike: main?.feelsLike,
                tempMin: main?.tempMin,
                tempMax: main?.tempMax,
                pressure: main?.pressure,
                humidity: main?.humidity,
                seaLevel: main?.seaLevel,
                grndLevel: main?.grndLevel)
            .toJson(),
      };
}

class CoordModel extends Coord {
  const CoordModel({required super.lon, required super.lat});

  const CoordModel.dummy() : this(lat: 45.133, lon: 7.367);

  factory CoordModel.fromJson(Map<String, dynamic> json) => CoordModel(
        lon: json["lon"]?.toDouble(),
        lat: json["lat"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
      };
}

class MainModel extends Main {
  const MainModel(
      {required super.temp,
      required super.feelsLike,
      required super.tempMin,
      required super.tempMax,
      required super.pressure,
      required super.humidity,
      required super.seaLevel,
      required super.grndLevel});

  const MainModel.dummy()
      : this(
            temp: 284.2,
            feelsLike: 282.93,
            tempMin: 283.06,
            tempMax: 286.82,
            pressure: 1021,
            humidity: 60,
            seaLevel: 1021,
            grndLevel: 910);

  factory MainModel.fromJson(Map<String, dynamic> json) => MainModel(
        temp: json["temp"]?.toDouble(),
        feelsLike: json["feels_like"]?.toDouble(),
        tempMin: json["temp_min"]?.toDouble(),
        tempMax: json["temp_max"]?.toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
        seaLevel: json["sea_level"],
        grndLevel: json["grnd_level"],
      );

  Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
        "sea_level": seaLevel,
        "grnd_level": grndLevel,
      };
}

class WeatherModel extends Weather {
  const WeatherModel(
      {required super.id,
      required super.main,
      required super.description,
      required super.icon});

  const WeatherModel.dummy()
      : this(id: 501, main: 'Rain', description: 'moderate rain', icon: '10d');

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        id: json["id"],
        main: json["main"],
        description: json["description"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
      };
}

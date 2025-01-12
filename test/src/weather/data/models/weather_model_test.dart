import 'dart:convert';

import 'package:awesome_weather/src/weather/data/models/weather_model.dart';
import 'package:awesome_weather/src/weather/domain/entities/weather.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tModel = WeatherEntityModel.dummy();

  test('should be a subclass of [WeatherEntity]', () {
    expect(tModel, isA<WeatherEntity>());
  });

  group('model methods should return correct data', () {
    final tJson = fixture('data.json');
    final tMap = jsonDecode(tJson) as Map<String, dynamic>;

    test('fromMap()', () {
      final result = WeatherEntityModel.fromJson(tMap);
      expect(result, equals(tModel));
    });

    test('toJson()', () {
      final result = tModel.toJson();
      expect(result, equals(tMap));
    });
  });
}

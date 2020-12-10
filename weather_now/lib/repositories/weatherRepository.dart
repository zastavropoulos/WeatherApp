import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_now/models/weatherModel.dart';

class WeatherRepository {
  Future<WeatherModel> getWeather(String city) async {
    final result = await http.Client().get(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=3b9baf81d5121d7cb0889954d2022b86');

    if (result.statusCode != 200) {
      throw Exception();
    }

    return fetchWeatherData(result.body);
  }

  WeatherModel fetchWeatherData(final response) {
    final data = json.decode(response);
    final weather = data['main'];

    return WeatherModel.fromJson(weather);
  }
}

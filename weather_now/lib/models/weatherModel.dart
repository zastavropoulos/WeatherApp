class WeatherModel {
  final temp;
  final maxTemp;
  final minTemp;
  final pressure;
  final humidity;

  double get getTemp => temp - 273;
  double get getMaxTemp => maxTemp - 273;
  double get getMinTemp => minTemp - 273;

  WeatherModel(
      this.temp, this.maxTemp, this.minTemp, this.pressure, this.humidity);

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(json['temp'], json['temp_max'], json['temp_min'],
        json['pressure'], json['humidity']);
  }
}

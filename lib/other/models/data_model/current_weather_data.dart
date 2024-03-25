class CurrentWeatherData {
  final temperature;
  final rain;
  final showers;
  final snowfall;
  final humidity;
  final windSpeed;
  final time;
  final timeList;
  final temperatureList;

  CurrentWeatherData({
    required this.temperature,
    required this.rain,
    required this.showers,
    required this.snowfall,
    required this.humidity,
    required this.windSpeed,
    required this.time,
    required this.timeList,
    required this.temperatureList,
  });
  factory CurrentWeatherData.fromJson(dynamic json) {
    return CurrentWeatherData(
      temperature: json['current']['apparent_temperature'],
      rain: json['current']['rain'],
      showers: json['current']['showers'],
      snowfall: json['current']['snowfall'],
      humidity: json['current']['relative_humidity_2m'],
      windSpeed: json['current']['wind_speed_10m'],
      time: json['current']['time'],
      timeList: json['hourly']['time'],
      temperatureList: json['hourly']['temperature_2m'],
    );
  }

  Map<String, dynamic> toJson() => {
        'temperatureAir': temperature,
        'rain': rain,
        'showers': showers,
        'snowfall': snowfall,
        'humidity': humidity,
        'windSpeed': windSpeed,
        'time': time,
        'timeList': timeList,
        'temperatureList': temperatureList,
      };
}

class CurrentWeatherData {
  final temperature; //*
  final rain;
  final showers;
  final snowfall;
  final humidity;
  final windSpeed;
  final time; //*

  CurrentWeatherData({
    required this.temperature,
    required this.rain,
    required this.showers,
    required this.snowfall,
    required this.humidity,
    required this.windSpeed,
    required this.time,
  });
  factory CurrentWeatherData.fromJson(dynamic json) {
    return CurrentWeatherData(
      temperature: json['current']['temperature_2m'],
      rain: json['current']['rain'],
      showers: json['current']['showers'],
      snowfall: json['current']['snowfall'],
      humidity: json['current']['relative_humidity_2m'],
      windSpeed: json['current']['wind_speed_10m'],
      time: json['current']['time'],
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
      };
}

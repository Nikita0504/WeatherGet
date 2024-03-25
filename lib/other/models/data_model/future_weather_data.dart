class FutureWeatherData {
  final temperature;
  final days;

  FutureWeatherData({
    required this.temperature,
    required this.days,
  });
  factory FutureWeatherData.fromJson(dynamic json) {
    return FutureWeatherData(
      temperature: json['daily']['temperature_2m_max'],
      days: json['daily']['time'],
    );
  }

  Map<String, dynamic> toJson() => {
        'temperatureAir': temperature,
        'days': days,
      };
}

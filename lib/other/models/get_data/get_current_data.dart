import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:weather_get/other/controllers/global_controller.dart';
import 'package:weather_get/other/models/data_model/current_weather_data.dart';

Future<void> getWeatherData(
  String latitude,
  String longitude,
) async {
  try {
    var response = await Dio().get(
      'https://api.open-meteo.com/v1/dwd-icon?latitude=$latitude&longitude=$longitude&current=relative_humidity_2m,apparent_temperature,is_day,precipitation,rain,showers,snowfall,wind_speed_10m&hourly=temperature_2m&timezone=Europe%2FMoscow',
    );
    if (response.statusCode == 200) {
      CurrentWeatherData data = CurrentWeatherData.fromJson(response.data);
      final GlobalController globalController = Get.put(GlobalController());
      globalController.data = data;
      globalController.ready(true);
    } else {
      print(response.statusCode);
    }
  } catch (e) {
    print(e);
  }
}

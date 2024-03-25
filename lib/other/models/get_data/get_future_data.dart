import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:weather_get/other/controllers/global_controller.dart';
import 'package:weather_get/other/models/data_model/future_weather_data.dart';

Future<void> getFutureData(
  String latitude,
  String longitude,
) async {
  try {
    var response = await Dio().get(
      'https://api.open-meteo.com/v1/forecast?latitude=$latitude&longitude=$longitude&daily=temperature_2m_max&timezone=Europe%2FMoscow',
    );
    if (response.statusCode == 200) {
      FutureWeatherData data = FutureWeatherData.fromJson(response.data);
      final GlobalController globalController = Get.put(GlobalController());
      globalController.futureData = data;
      globalController.ready(true);
    } else {
      print(response.statusCode);
    }
  } catch (e) {
    print(e);
  }
}

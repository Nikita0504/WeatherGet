import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_get/other/controllers/global_controller.dart';
import 'package:weather_get/other/models/data_model/current_weather_data.dart';

class TemperatureData extends GetView<GlobalController> {
  const TemperatureData({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    CurrentWeatherData data = controller.data;
    return Container(
        margin:
            EdgeInsets.fromLTRB(0, size.height * 0.1, 0, size.height * 0.25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${data.temperature.toString()}°C',
              style: const TextStyle(color: Colors.white, fontSize: 60),
            ),
            Text(
              data.time.toString(),
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ));
  }
}

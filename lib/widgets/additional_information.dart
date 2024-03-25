import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_get/other/controllers/global_controller.dart';
import 'package:weather_get/other/models/data_model/current_weather_data.dart';

class AdditionalInformation extends GetView<GlobalController> {
  const AdditionalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    CurrentWeatherData data = controller.data;
    TextStyle style = const TextStyle(color: Colors.white, fontSize: 20);
    return Container(
        margin:
            EdgeInsets.fromLTRB(size.width * 0.05, size.height * 0.16, 10, 10),
        height: size.height * 0.25,
        width: size.width * 0.6,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 86, 81, 81),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Information:',
                style: style,
              ),
              Text(
                'Rain: ${data.rain.toString()} mm',
                style: style,
              ),
              Text(
                'Humidity: ${data.humidity.toString()} %',
                style: style,
              ),
              Text(
                'Snowfall: ${data.snowfall.toString()} cm',
                style: style,
              ),
              Text(
                'Showers: ${data.showers.toString()} mm',
                style: style,
              ),
              Text(
                'WindSpeed: ${data.windSpeed.toString()} km/h',
                style: style,
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_get/other/controllers/global_controller.dart';
import 'package:weather_get/widgets/hourly_weather/widget.dart';

class HourlyWeather extends GetView<GlobalController> {
  const HourlyWeather({super.key});

  @override
  Widget build(BuildContext context) {
    List timeList = controller.data.timeList;
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: size.height * 0.1,
      width: size.width * 0.6,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 86, 81, 81),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            timeList.length,
            (index) => HourlyWidget(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}

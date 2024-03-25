import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_get/other/controllers/global_controller.dart';
import 'package:weather_get/widgets/future_weather/widget.dart';

class BarFutureWeather extends GetView<GlobalController> {
  const BarFutureWeather({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List timeList = controller.futureData.days;
    return Container(
      margin: EdgeInsets.fromLTRB(
          size.width * 0.05, size.height * 0.06, 10, size.height * 0.06),
      height: size.height * 0.9,
      width: size.width * 0.2,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 86, 81, 81),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(
            timeList.length,
            (index) => FutureWidget(
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}

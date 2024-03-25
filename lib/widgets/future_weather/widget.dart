import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_get/other/controllers/global_controller.dart';

class FutureWidget extends GetView<GlobalController> {
  final int index;
  const FutureWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    List timeList = controller.futureData.days;
    List temperatureList = controller.futureData.temperature;
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(5),
      height: size.height * 0.1,
      width: size.width * 0.165,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 73, 70, 70),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: [
          Text(
            '${temperatureList[index].toString()}°C',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            timeList[index].toString(),
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

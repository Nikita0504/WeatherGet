import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_get/main_screen.dart';
import 'package:weather_get/other/controllers/global_controller.dart';

Widget mainWidget() {
  return GetBuilder<GlobalController>(
    init: GlobalController(),
    builder: (controller) {
      if (controller.dataReady.value != false) {
        return const MainScreen();
      } else {
        return const Scaffold(
            backgroundColor: Color.fromARGB(255, 63, 59, 59),
            body: Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            )));
      }
    },
  );
}

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weather_get/other/models/get_data/get_current_location.dart';

class GlobalController extends GetxController {
  var data;
  RxBool dataReady = false.obs;

  @override
  void onInit() async {
    WidgetsFlutterBinding.ensureInitialized();
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
    } else if (permission == LocationPermission.deniedForever) {
    } else {
      getCurrentLocation();
    }
    super.onInit();
  }

  void ready(bool ok) {
    dataReady.value = ok;
    update();
  }
}

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_get/other/models/get_data/get_current_data.dart';
import 'package:weather_get/other/models/get_data/get_future_data.dart';

void getCurrentLocation() {
  WidgetsFlutterBinding.ensureInitialized();
  Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best,
          forceAndroidLocationManager: true)
      .then((Position position) async {
    getWeatherData(position.latitude.toString(), position.longitude.toString());
    getFutureData(position.latitude.toString(), position.longitude.toString());
  }).catchError((e) {
    print(e);
  });
}

import 'package:flutter/material.dart';
import 'package:weather_get/widgets/additional_information.dart';
import 'package:weather_get/widgets/bar_future_weaher.dart';
import 'package:weather_get/widgets/temperature_date.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 59, 59),
      body: Row(
        children: [
          BarFutureWeather(),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [TemperatureData(), AdditionalInformation()],
          )
        ],
      ),
    );
  }
}

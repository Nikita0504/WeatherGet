import 'package:flutter/material.dart';

class BarFutureWeather extends StatelessWidget {
  const BarFutureWeather({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(
          size.width * 0.05, size.height * 0.06, 10, size.height * 0.06),
      height: size.height * 0.9,
      width: size.width * 0.15,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 86, 81, 81),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class NoWeatherPage extends StatelessWidget {
  const NoWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 159, 161, 230),
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: Text(
            textAlign: TextAlign.center,
            'There is no weather data 😔, try to search 🔎',
            style: TextStyle(
                fontFamily: 'Merienda',
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

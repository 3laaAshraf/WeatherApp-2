import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class FailPage extends StatelessWidget {
  const FailPage({super.key});

  @override
  Widget build(BuildContext context) {
    var z = BlocProvider.of<GetWeatherCubit>(context).y;
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 180,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 190, 53, 53),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: Text(
            textAlign: TextAlign.center,
            z,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Acme',
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

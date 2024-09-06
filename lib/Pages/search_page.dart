import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b121e),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Search a City',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Acme',
              fontWeight: FontWeight.bold,
              fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'City Name',
              style: TextStyle(
                  height: 3,
                  fontSize: 30,
                  fontFamily: 'Merienda',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 233, 158, 158)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onSubmitted: (value) {
                  var getWeatherCubitData =
                      BlocProvider.of<GetWeatherCubit>(context)
                          .getWeather(cityName: value);

                  Navigator.pop(context);
                },
                style: const TextStyle(
                    color: Color.fromARGB(255, 27, 5, 70), fontSize: 22),
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                  labelStyle:
                      const TextStyle(fontSize: 25, color: Colors.black),
                  hintText: 'Enter City Name',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 196, 195, 205),
                  suffixIcon: const Icon(Icons.search),
                  suffixIconColor: const Color.fromARGB(255, 201, 180, 231),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 8, 8, 8),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 4, 4, 4),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

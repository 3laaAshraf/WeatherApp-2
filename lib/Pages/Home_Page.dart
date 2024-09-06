import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Pages/fail_page.dart';
import 'package:news_app/Pages/no_weather_page.dart';
import 'package:news_app/Pages/search_page.dart';
import 'package:news_app/Pages/weather_info_body.dart';
import 'package:news_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:news_app/cubits/get_weather_cubit/get_weather_state.dart';
//import 'package:news_app/Pages/weather_info_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b121e),
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
              color: Color.fromARGB(255, 177, 177, 228),
              fontFamily: 'ConcertOne1',
              fontSize: 40),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const SearchPage();
              }));
            },
            icon: const Icon(
              Icons.search,
              size: 40,
              color: Colors.blueAccent,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: BlocBuilder<GetWeatherCubit, GetWeatherState>(
          builder: (context, state) {
            if (state is WeatherLoadedState) {
              return const WeatherInfoBody();
            } else if (state is NoWeatherState) {
              return const NoWeatherPage();
            } else if (state is WeatherLoadingState) {
              return const CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ],
              );
            } else {
              return const FailPage();
            }
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherObject = BlocProvider.of<GetWeatherCubit>(context).weatherClass;
    return Center(
      child: Column(
        children: [
          Text(
            weatherObject.city,
            style: const TextStyle(
              fontSize: 55,
              color: Colors.white,
              fontFamily: 'Roboto-Black',
              height: 2.8,
            ),
          ),
          SizedBox(
            height: 180,
            width: 200,
            child: Image.network(
              'https:${weatherObject.image}',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            '${weatherObject.temp}',
            style: const TextStyle(
              fontSize: 70,
              color: Colors.white,
              fontFamily: 'Roboto-Black',
              height: 2,
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 1.5,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 25),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff202b3c)),
                  //color: Colors.blue,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'MaxTemp',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff858d9f),
                            fontFamily: 'Oswald',
                          ),
                        ),
                        Text(
                          '${weatherObject.maxTemp}',
                          style: const TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'Roboto-Black',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff202b3c)),
                  //color: Colors.blue,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'condition',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff858d9f),
                            fontFamily: 'Oswald',
                          ),
                        ),
                        Text(
                          weatherObject.condition,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            height: 0.9,
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'Roboto-Black',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff202b3c)),
                  //color: Colors.blue,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'MinTemp',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff858d9f),
                            fontFamily: 'Oswald',
                          ),
                        ),
                        Text(
                          '${weatherObject.minTemp}',
                          style: const TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'Roboto-Black',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xff202b3c)),
                  //color: Colors.blue,
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'updated at',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff858d9f),
                            fontFamily: 'Oswald',
                          ),
                        ),
                        Text(
                          '${weatherObject.date.hour}:${weatherObject.date.minute}',
                          style: const TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontFamily: 'Roboto-Black',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

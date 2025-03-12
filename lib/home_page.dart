import 'package:flutter/material.dart';
import 'package:wetter_app/weather_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget weatherData = Text("You have to refresh");

  Future<Widget> showCurrentWeather() async {
    final Map<String, dynamic> weatherDataMap =
        await WeatherService.fetchCurrentWeather();

    return Column(
      children: [
        Text("${weatherDataMap["temperature"]} °C",
            style: TextStyle(fontSize: 30)),
        Text("Humidity: ${weatherDataMap["humidity"]} %",
            style: TextStyle(fontSize: 30)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Eberbach", style: TextStyle(fontSize: 40)),
            SizedBox(
              height: 20,
            ),
            weatherData,
            SizedBox(
              height: 20,
            ),
            Center(
                child: ElevatedButton(
                    onPressed: () async {
                      Widget newWeatherData = await showCurrentWeather();
                      setState(() {
                        weatherData = newWeatherData;
                      });
                    },
                    child: Text("Show weather")))
          ],
        ),
      ),
    );
  }
}

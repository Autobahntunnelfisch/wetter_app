import 'dart:convert';
import 'package:http/http.dart';

class WeatherService {
  static Future<Map<String, dynamic>> fetchCurrentWeather() async {
    // erstelle einen uriString, mit der URL
    const uriString =
        "https://api.open-meteo.com/v1/forecast?latitude=49.4668&longitude=8.9902&current=temperature_2m,relative_humidity_2m,precipitation,wind_speed_10m";
    // hier wird der Datentyp httpResponse in response gespeichert aber gleichzeitig in einen UriString geparst // final response wird hier nur erkannt, weil dart das ableiten kann, eigentlich ist der datentyp http.Response
    final response = await get(Uri.parse(uriString));
    final weatherData = await json.decode(response.body);

    final currentTime = weatherData["current"]["time"];
    final currentTemperature = weatherData["current"]["temperature_2m"];
    final currentHumidity = weatherData["current"]["relative_humidity_2m"];

    return {
      "time": currentTime,
      "temperature": currentTemperature,
      "humidity": currentHumidity
    };
  }
}

import 'package:geolacator_2_0/networking.dart';
import 'package:geolacator_2_0/location.dart';

const apiKey = '3dca1ab585ff1797500477fbe58c5e4b';
const openWeatherMapURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition == 801) {
      return '🌤️️';
    } else if (condition == 802) {
      return '🌤️️';
    } else if (condition == 803) {
      return '🌥️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 30) {
      return 'Час охолонути 🍦';
    } else if (temp > 25) {
      return 'Час вдягнути шорти та 👕';
    } else if (temp > 15) {
      return 'Не забудьте про 🕶';
    } else if (temp < 5) {
      return 'Вдягнiть 🧣 та 🧤';
    } else {
      return 'Прихопiть 🧥 про всяк випадок';
    }
  }
}

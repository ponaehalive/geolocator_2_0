class WeatherModel {
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
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'Час охолонути 🍦';
    } else if (temp > 20) {
      return 'Час вдягнути шорти та 👕';
    } else if (temp < 5) {
      return 'Вдягнiть 🧣 та 🧤';
    } else {
      return 'Прихопiть 🧥 про всяк випадок';
    }
  }
}

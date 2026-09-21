// features/home/data/models/weather_model.dart

class WeatherModel {
  final String name, region, country, localTime, lastUpdated, status;
  final double temp, feelLikestemp;
  final HourModel hour;
  //* hour

  WeatherModel({
    required this.name,
    required this.region,
    required this.country,
    required this.localTime,
    required this.lastUpdated,
    required this.temp,
    required this.feelLikestemp,
    required this.status,
    required this.hour,
  });
  factory WeatherModel.fromjson(Map<String, dynamic> json) {
    return WeatherModel(
      name: json['location']['name'],
      region: json['location']['region'],
      country: json['location']['country'],
      localTime: json['location']['localtime'],
      lastUpdated: json['current']['last_updated'],
      temp: json['current']['temp_c'],
      feelLikestemp: json['current']['feelslike_c'],
      status: json['current']['condition']['text'],
      hour: HourModel.fromjson(json['forecast']['forecastday'][0]['hour'][0]),
    );
  }
}

class HourModel {
  final String hourTime, hourIcon, hourTemp;

  HourModel({
    required this.hourTime,
    required this.hourIcon,
    required this.hourTemp,
  });

  factory HourModel.fromjson(Map<String, dynamic> json) {
    return HourModel(
      hourTime: json['time'],
      hourIcon: json['condition']['icon'],
      hourTemp: json['temp_c'].toString(),
    );
  }
}

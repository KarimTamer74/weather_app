// features/home/data/data_source/remote_data_source.dart
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';

class RemoteDataSource {
  final Dio dio = Dio();

  Future<WeatherModel> gerWeather() async {
    try {
      final String url = 'https://api.weatherapi.com/v1/forecast.json?q=cairo';
      Response response = await dio.get(
        url,
        queryParameters: {'key': 'c454fa2d66844606ba104544261109'},
      );
      log(response.data.toString());
      return WeatherModel.fromjson(response.data);
    } on DioException catch (e) {
      log(e.response?.data.toString() ?? 'error');
      throw Exception("error");
    }
  }
}

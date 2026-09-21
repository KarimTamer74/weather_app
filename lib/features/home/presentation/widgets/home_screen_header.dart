// features/home/presentation/widgets/home_screen_header.dart
import 'package:flutter/material.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key, required this.weather});
  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: Color(0XFf172B4D)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            weather.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${weather.region}, ${weather.country}",
            style: TextStyle(
              color: Color(0xffCBD5E1),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                weather.temp.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 72,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Text(
                  "°C",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Spacer(),
              Icon(Icons.sunny, color: Colors.amber, size: 72),
            ],
          ),
          Text(
            weather.status,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Feels like ${weather.feelLikestemp}° . Updated ${weather.lastUpdated}",
            style: TextStyle(
              color: Color(0xffCBD5E1),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

// features/home/presentation/widgets/HOURLY_FORECAST.dart
import 'package:flutter/material.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';

class HourlyForecast extends StatelessWidget {
  const HourlyForecast({super.key, required this.weather});
  final HourModel weather;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'HOURLY FORECAST',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color(0xff7E8B9B),
            ),
          ),
          SizedBox(
            height: 125,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 24,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 8),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: index == 0 ? Color(0xff1e3352) : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Now',
                        style: TextStyle(
                          color: index == 0 ? Colors.white : Color(0xff64748B),
                        ),
                      ),
                      Icon(Icons.sunny, color: Colors.yellow),
                      Text(
                        weather.hourTemp,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: index == 0 ? Colors.white : Color(0xff64748B),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// features/home/presentation/widgets/weather_details_section.dart
import 'package:flutter/material.dart';

class WeatherDetailsSection extends StatelessWidget {
  const WeatherDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal :16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'WEATHER DETAILS',
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12,),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 12.0,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal :10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.abc, size: 38),
                      Text(
                        'HUMIDITY',
                        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '38%',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

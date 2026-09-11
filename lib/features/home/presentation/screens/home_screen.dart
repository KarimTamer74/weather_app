// features/home/presentation/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentation/widgets/hourly_forecast.dart';
import 'package:weather_app/features/home/presentation/widgets/home_screen_header.dart';
import 'package:weather_app/features/home/presentation/widgets/weather_details_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              //* Weather Screen header
              HomeScreenHeader(),
              HourlyForecast(),
          
              //* weather details
              WeatherDetailsSection(),
            ],
          ),
        ),
      ),
    );
  }
}

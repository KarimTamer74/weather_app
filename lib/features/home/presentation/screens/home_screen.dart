// features/home/presentation/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/home/presentation/cbits/weather_cubit.dart';
import 'package:weather_app/features/home/presentation/cbits/weatherstates.dart';
import 'package:weather_app/features/home/presentation/widgets/home_screen_header.dart';
import 'package:weather_app/features/home/presentation/widgets/hourly_forecast.dart';
import 'package:weather_app/features/home/presentation/widgets/weather_details_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE2E8F0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<WeatherCubit, Weatherstates>(
            builder: (context, state) {
              if (state is WeatherLoadingState) {
                return Center(child: CircularProgressIndicator());
              } else if (state is WeatherSuccessState) {
                return Column(
                  spacing: 20,
                  children: [
                    //* Weather Screen header
                    HomeScreenHeader(weather: state.wearther),
                    HourlyForecast(weather: state.wearther.hour),

                    //* weather details
                    WeatherDetailsSection(),
                  ],
                );
              } else if (state is WeatherFailureState) {
                return Text('error');
              }
              return SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}

// features/home/presentation/cbits/weather_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:weather_app/features/home/data/data_source/remote_data_source.dart';
import 'package:weather_app/features/home/presentation/cbits/weatherstates.dart';

class WeatherCubit extends Cubit<Weatherstates> {
  WeatherCubit() : super(WeatherTnitialState());
  RemoteDataSource remoteDataSource = RemoteDataSource();

  Future<void> getweather() async {
    emit(WeatherLoadingState());
    await remoteDataSource.gerWeather().then(
      onError: (error) {
        emit(WeatherFailureState());
      },
      (val){

 emit( WeatherSuccessState(wearther: val));

      }
    );
  }
}

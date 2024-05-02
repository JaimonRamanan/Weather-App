import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_pulse/domain/weather/models/weather_model/weather_model.dart';

import '../../application/weather/weather_bloc.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<WeatherBloc>();
    WeatherModel? data = bloc.state.weatherRes.data;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("City name : ${bloc.cityNameCtr.text}"),
            Text("Current temperature : ${data?.current?.tempC ?? ""} C"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Weather condition : ${data?.current?.condition?.text ?? ""}",
                ),
                Image.network(
                  "http:${data?.current?.condition?.icon ?? ""}",
                  width: 40.w,
                  height: 40.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

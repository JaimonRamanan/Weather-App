import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_pulse/domain/weather/models/weather_model/weather_model.dart';

import 'widgets/grid_card_widget.dart';
import '../../application/weather/weather_bloc.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<WeatherBloc>();
    WeatherModel? data = bloc.state.weatherRes.data;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              childAspectRatio: orientation == Orientation.portrait ? 1.4 : 1.8,
              mainAxisSpacing: 20.h,
              crossAxisSpacing: 10.w,
              children: [
                GridCardWidget(
                  subTitle: "City",
                  text: bloc.cityNameCtr.text,
                ),
                GridCardWidget(
                  text: data?.current?.condition?.text ?? "",
                  image: data?.current?.condition?.icon ?? "",
                ),
                GridCardWidget(
                  subTitle: "Temperature",
                  text: "${data?.current?.tempC?.toString() ?? "0"} C",
                ),
                GridCardWidget(
                  subTitle: "Humidity",
                  text: data?.current?.humidity?.toString() ?? "",
                ),
                GridCardWidget(
                  subTitle: "Wind speed",
                  text: "${data?.current?.windKph?.toString() ?? "0"} kph",
                ),
                GridCardWidget(
                  subTitle: "Min. & Max. Temp",
                  text: "${data?.current?.tempC?.toString() ?? "0"} C",
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

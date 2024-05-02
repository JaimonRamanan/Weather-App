import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_pulse/application/weather/weather_bloc.dart';
import 'package:weather_pulse/presentation/widgets/common_text_field.dart';

import '../widgets/common_button.dart';

class LocationSearchScreen extends StatelessWidget {
  const LocationSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonTextField(
              hintText: "Enter city",
              textEditingController: context.read<WeatherBloc>().cityNameCtr,
            ),
            SizedBox(height: 20.h),
            CommonButton(
              btnName: "Get weather updates",
              onTap: () {
                context
                    .read<WeatherBloc>()
                    .add(const WeatherEvent.getWeather());
              },
            )
          ],
        ),
      ),
    );
  }
}

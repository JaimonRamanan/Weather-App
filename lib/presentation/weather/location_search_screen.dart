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
    final bloc = context.read<WeatherBloc>();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonTextField(
              hintText: "Enter city",
              textEditingController: bloc.cityNameCtr,
            ),
            SizedBox(height: 20.h),
            BlocConsumer<WeatherBloc, WeatherState>(
              listener: (context, state) {
                // Navigation to next page
              },
              builder: (context, state) {
                return CommonButton(
                  btnName: "Get weather updates",
                  loading: state.weatherRes.loading,
                  onTap: () {
                    bloc.add(const WeatherEvent.getWeather());
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

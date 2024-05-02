import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/common_button.dart';
import '../../../core/route/route_names.dart';
import '../../widgets/common_text_field.dart';
import '../../../application/weather/weather_bloc.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<WeatherBloc>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonTextField(
          hintText: "Search for city",
          textEditingController: bloc.cityNameCtr,
        ),
        SizedBox(height: 20.h),
        BlocConsumer<WeatherBloc, WeatherState>(
          listener: (context, state) {
            if (state.weatherRes.data != null) {
              Navigator.pushNamed(context, RouteNames.detailScreen);
            }
          },
          builder: (context, state) {
            return CommonButton(
              btnName: "Get weather",
              loading: state.weatherRes.loading,
              onTap: () {
                bloc.add(const WeatherEvent.getWeather());
              },
            );
          },
        )
      ],
    );
  }
}

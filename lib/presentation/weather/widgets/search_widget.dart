import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/common_button.dart';
import '../../../core/route/route_names.dart';
import '../../widgets/common_text_field.dart';
import '../../../application/weather/weather_bloc.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<WeatherBloc>();
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonTextField(
            hintText: "Search for city",
            textEditingController: bloc.cityNameCtr,
            validator: (city) {
              if (city?.isEmpty ?? true) {
                return "Enter a city name";
              }
              return null;
            },
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
                  if (_formKey.currentState?.validate() ?? false) {
                    bloc.add(WeatherEvent.getWeather(context: context));
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}

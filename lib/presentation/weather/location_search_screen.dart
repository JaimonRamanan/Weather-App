import 'package:flutter/material.dart';
import 'package:weather_pulse/presentation/widgets/common_text_field.dart';

class LocationSearchScreen extends StatelessWidget {
  const LocationSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CommonTextField(
            hintText: "Enter city",
            textEditingController: TextEditingController(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String btnName;
  final Function() onTap;
  const CommonButton({
    super.key,
    required this.onTap,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(btnName),
    );
  }
}

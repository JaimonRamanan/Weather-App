import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final bool loading;
  final double? width;
  final String btnName;
  final Function() onTap;
  const CommonButton({
    super.key,
    this.width,
    required this.onTap,
    this.loading = false,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width * 0.8,
      child: ElevatedButton(
        onPressed: onTap,
        child: loading ? const CupertinoActivityIndicator() : Text(btnName),
      ),
    );
  }
}

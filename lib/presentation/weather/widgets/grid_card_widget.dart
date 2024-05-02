import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridCardWidget extends StatelessWidget {
  final String text;
  final String? image, subTitle;
  const GridCardWidget({
    super.key,
    this.image,
    this.subTitle,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        border: Border.all(color: Theme.of(context).focusColor),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null)
            Image.network(
              image?.contains("http:") ?? false ? image! : "http:$image",
            ),
          if (subTitle != null) Text(subTitle!),
          Text(text, style: Theme.of(context).textTheme.titleSmall),
        ],
      ),
    );
  }
}

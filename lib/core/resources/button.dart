import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      this.isSmallButton = true,
      this.isElevated = true});
  final String text;
  final bool isSmallButton;
  final bool isElevated;
  double width = 131.w;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return isSmallButton == true
        ? isElevated == true
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(131.w, 67.h),
                    textStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold)),
                onPressed: () {
                  return print('me');
                },
                child: Text(text))
            : OutlinedButton(
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(131.w, 67.h),
                    textStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold)),
                onPressed: () {},
                child: Text(text))
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: Size(394.w, 67.h),
                textStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            onPressed: () {
              return print('me');
            },
            child: Text(text));
  }
}

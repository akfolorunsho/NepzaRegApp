import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyText extends StatelessWidget {
  const BodyText(
      {super.key,
      required this.txt,
      this.color = Colors.black,
      this.fontWeight = FontWeight.w400});

  final String txt;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(fontWeight: fontWeight, fontSize: 14.sp, color: color),
    );
  }
}

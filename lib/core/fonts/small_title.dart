import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallTitle extends StatelessWidget {
  const SmallTitle({super.key, required this.txt});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32.sp),
    );
  }
}

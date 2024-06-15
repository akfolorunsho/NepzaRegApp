import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigTitle extends StatelessWidget {
  const BigTitle({super.key, required this.txt});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 36.sp),
    );
  }
}

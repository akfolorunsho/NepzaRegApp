import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepza/core/resources/media.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Media.logo,
      width: 122.sp,
      height: 164.sp,
      alignment: Alignment.topLeft,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepza/core/resources/colours.dart';
import 'package:nepza/register/presentation/pages/register_landing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 1024),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'NEPZA Enterprise Registration',
            theme: ThemeData(
              colorScheme:
                  ColorScheme.fromSeed(seedColor: Colours.primaryColor),
              useMaterial3: true,
            ),
            home: const RegisterLanding(),
          );
        });
  }
}

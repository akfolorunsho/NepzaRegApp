import 'package:flutter/material.dart';

class SubTitle1 extends StatelessWidget {
  const SubTitle1({super.key, required this.txt});

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
    );
  }
}

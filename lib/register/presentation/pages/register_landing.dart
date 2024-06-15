import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nepza/core/fonts/big_title.dart';
import 'package:nepza/core/fonts/body_txt.dart';
import 'package:nepza/core/fonts/small_title.dart';
import 'package:nepza/core/resources/button.dart';
import 'package:nepza/core/resources/colours.dart';

import '../../../core/resources/logo.dart';
import '../../../core/resources/media.dart';

class RegisterLanding extends StatefulWidget {
  const RegisterLanding({super.key});

  @override
  State<RegisterLanding> createState() => _RegisterLandingState();
}

class _RegisterLandingState extends State<RegisterLanding> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return SingleChildScrollView(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(50.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _logo(),
                SizedBox(
                  height: 72.sp,
                ),
                _title(),
                SizedBox(
                  height: 72.sp,
                ),
                _storySet()
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            color: Colours.secondaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SmallTitle(txt: 'Let’s get it started'),
                SizedBox(
                  height: 64.h,
                ),
                rightColumn()
              ],
            ),
          ),
        )
      ],
    ));
  }

  Widget _logo() {
    return const Logo();
  }

  Widget _title() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BigTitle(txt: 'Register Your Business with Ease'),
        Container(
          width: 247.w,
          height: 11.h,
          color: Colors.green[900],
        )
      ],
    );
  }

  Widget _storySet() {
    return SvgPicture.asset(
      Media.letsStart,
      width: 530.47.w,
      height: 497.86.h,
    );
  }

  Widget rightColumn() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (newValue) {
                setState(() {
                  isChecked = newValue!;
                });
              },
            ), //Checkbox(value: false, onChanged: () {}),
            SizedBox(
              width: 16.w,
            ),
            SizedBox(
              width: 500.w,
              child: const Expanded(
                child: BodyText(
                  txt:
                      'Before proceeding on your company’s registration, you agreed that you have evidence of zone of interest acceptance',
                  color: Colours.noticeColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 42.h,
        ),
        CustomButton(
          text: 'Register New Enterprise',
          isSmallButton: false,
        )
      ],
    );
  }
}

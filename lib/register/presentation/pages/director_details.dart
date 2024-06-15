import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nepza/core/fonts/big_title.dart';
import 'package:nepza/core/fonts/small_title.dart';
import 'package:nepza/core/resources/button.dart';
import 'package:nepza/core/resources/colours.dart';

import '../../../core/resources/director_widget.dart';
import '../../../core/resources/logo.dart';
import '../../../core/resources/media.dart';

class DirectorDetails extends StatefulWidget {
  const DirectorDetails({super.key});

  @override
  State<DirectorDetails> createState() => _DirectorDetails();
}

class _DirectorDetails extends State<DirectorDetails> {
  bool isChecked = false;
  GlobalKey key = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return SingleChildScrollView(
      child: Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoCol(),
            _buildFormColumn(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCol() {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.all(50.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
    );
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
      Media.homeStory,
      width: 530.47.w,
      height: 497.86.h,
    );
  }

  Widget _buildFormColumn() {
    return Expanded(
      flex: 2,
      child: Container(
          width: MediaQuery.sizeOf(context).width,
          color: Colours.secondaryColor,
          child: Padding(
            padding: EdgeInsets.all(24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTitleAndForm(),
              ],
            ),
          )),
    );
  }

  Widget _buildTitleAndForm() {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: Colours.secondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SmallTitle(txt: 'Fill Director(s) Details'),
          const DirectorWidget(),

          _buildButton(),
          //_buildForm(),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          text: 'Back',
          isElevated: false,
        ),
        SizedBox(
          width: 28.w,
        ),
        CustomButton(
          text: 'Next',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nepza/core/fonts/big_title.dart';
import 'package:nepza/core/fonts/body_txt.dart';
import 'package:nepza/core/fonts/small_title.dart';
import 'package:nepza/core/resources/button.dart';
import 'package:nepza/core/resources/colours.dart';
import 'package:nepza/core/resources/custom_text_form_field.dart';

import '../../../core/resources/logo.dart';
import '../../../core/resources/media.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetails();
}

class _PersonalDetails extends State<PersonalDetails> {
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
                const SmallTitle(txt: 'Enterprise Information'),
                _buildForm(),
                SizedBox(
                  width: 500.w,
                  child: const Expanded(
                      child: BodyText(
                          txt:
                              'NEPZA is dedicated to safeguarding your privacy. We use your personal information solely to manage your account and deliver the requested products and services. Occasionally, we may contact you via email or phone about our products, services, and other relevant content.')),
                ),
                SizedBox(
                  height: 28.h,
                ),
                SizedBox(
                  width: 500.w,
                  child: const Expanded(
                      child: BodyText(
                          fontWeight: FontWeight.w600,
                          txt:
                              'By clicking "Next," you consent to NEPZA storing and processing your submitted personal information to provide the requested content.')),
                ),
                SizedBox(
                  height: 48.h,
                ),
                _buildCaptcha(),
                SizedBox(
                  height: 48.h,
                ),
                CustomButton(
                  text: 'Next',
                )
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
      Media.homeStory,
      width: 530.47.w,
      height: 497.86.h,
    );
  }

  Widget _buildForm() {
    return Form(
        child: Column(
      children: [
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'First Name',
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(label: 'Last Name'),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
            label: 'Email', inputType: TextInputType.emailAddress),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
            label: 'Mobile Number', inputType: TextInputType.phone),
        SizedBox(
          height: 28.h,
        ),
      ],
    ));
  }

  Widget _buildCaptcha() {
    return Container();
  }
}

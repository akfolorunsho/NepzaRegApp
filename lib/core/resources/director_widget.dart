import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepza/core/resources/photoBox.dart';

import 'custom_dropdown_form_field.dart';
import 'custom_text_form_field.dart';

class DirectorWidget extends StatelessWidget {
  const DirectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildForm();
  }

  Widget _buildForm() {
    List<String> meansOfId = ['Passport', 'NIN'];
    return Form(
        child: Column(
      children: [
        _buildPhoto(),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'First Name',
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'Last Name',
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'Email',
          inputType: TextInputType.emailAddress,
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'Mobile Number',
        ),
        SizedBox(
          height: 28.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 90.w),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomDropdownFormField(
              items: meansOfId,
              labelText: 'Means of ID',
              width: 200.w,
            ),
            CustomTextFormField(
              label: 'ID Number',
              width: 300.w,
            )
          ]),
        ),
        SizedBox(
          height: 28.h,
        ),
        CustomTextFormField(
          label: 'Current Address',
          minLines: 3,
          maxLines: 3,
          inputType: TextInputType.streetAddress,
        ),
        SizedBox(
          height: 68.h,
        )
      ],
    ));
  }

  Widget _buildPhoto() {
    return Padding(
      padding: EdgeInsets.only(top: 56.h),
      child: PhotoBox(),
    );
  }
}

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
              width: 200.w,
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
          height: 28.h,
        ),
        Divider(
          color: Colors.white,
          indent: 92.w,
          endIndent: 92.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.picture_as_pdf),
            const Text(' '),
            TextButton(onPressed: () {}, child: const Text('Select File'))
          ],
        ),
        Divider(
          color: Colors.white,
          indent: 92.w,
          endIndent: 92.w,
        ),
        Padding(
          padding: EdgeInsets.only(right: 95.w, top: 16.h),
          child: Align(
            alignment: Alignment.centerRight,
            child: PhotoBox(
              height: 92.h,
              width: 125.w,
              isSignature: true,
            ),
          ),
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

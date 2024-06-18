import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepza/core/resources/custom_dropdown_form_field.dart';
import 'package:nepza/core/resources/custom_text_form_field.dart';

class EconomicValueWidget extends StatefulWidget {
  const EconomicValueWidget({super.key});

  @override
  State<EconomicValueWidget> createState() => _EconomicValueWidgetState();
}

class _EconomicValueWidgetState extends State<EconomicValueWidget> {
  List<String> currency = ['Naira', 'Dollar'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomTextFormField(
              label: 'Value of Export',
              inputType: TextInputType.number,
              width: 250.w,
            ),
            SizedBox(
              width: 50.w,
            ),
            CustomDropdownFormField(
              items: currency,
              labelText: 'Currency',
              width: 170.w,
            )
          ],
        ),
        SizedBox(
          height: 28.h,
        ),
        Row(
          children: [
            CustomTextFormField(
              label: 'Value of FDI',
              inputType: TextInputType.number,
              width: 250.w,
            ),
            SizedBox(
              width: 50.w,
            ),
            CustomDropdownFormField(
              items: currency,
              labelText: 'Currency',
              width: 170.w,
            )
          ],
        ),
        SizedBox(
          height: 28.h,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: CustomTextFormField(
            label: 'New Job Target',
            inputType: TextInputType.number,
            width: 250.w,
          ),
        ),
      ],
    );
  }
}

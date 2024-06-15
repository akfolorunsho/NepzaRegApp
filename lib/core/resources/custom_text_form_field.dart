import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLines;
  final String? label;
  final TextInputType? inputType;
  final TextCapitalization textCapitalization;
  final double width;
  final FormFieldValidator<String>? validator;

  CustomTextFormField(
      {super.key,
      this.controller,
      this.minLines = 1,
      this.maxLines = 1,
      this.label,
      this.inputType = TextInputType.name,
      this.textCapitalization = TextCapitalization.words,
      this.width = 500,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.w,
      child: TextFormField(
        textCapitalization: textCapitalization,
        controller: controller,
        minLines: minLines,
        maxLines: maxLines,
        keyboardType: inputType,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: label,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

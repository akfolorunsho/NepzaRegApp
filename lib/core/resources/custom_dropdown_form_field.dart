import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropdownFormField extends StatefulWidget {
  final List<String> items;
  final String? initialValue;
  final String labelText;
  final FormFieldSetter<String>? onSaved;
  final double width;
  final FormFieldValidator<String>? validator;

  const CustomDropdownFormField({
    super.key,
    required this.items,
    this.initialValue,
    required this.labelText,
    this.onSaved,
    this.width = 500,
    this.validator,
  });

  @override
  _CustomDropdownFormFieldState createState() =>
      _CustomDropdownFormFieldState();
}

class _CustomDropdownFormFieldState extends State<CustomDropdownFormField> {
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width.w,
      child: DropdownButtonFormField<String>(
        value: _selectedValue,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: widget.labelText,
          border: OutlineInputBorder(),
        ),
        items: widget.items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            _selectedValue = newValue;
          });
        },
        onSaved: widget.onSaved,
        validator: widget.validator,
      ),
    );
  }
}

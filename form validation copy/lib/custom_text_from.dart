import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final String name;
  // final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    this.validator,
    required this.name,
    // required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20,
        left: 20,
        right: 20,
      ),
      child: FormBuilderTextField(
        name: name,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          border: OutlineInputBorder(),
          errorBorder: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }
}

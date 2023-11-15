import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.onChange,
      super.key,
      this.hintText,
      this.obscureText = false,
      this.inputType,
      required Null Function(dynamic data) onChanged});
  Function(String)? onChange;
  String? hintText;
  TextInputType? inputType;
  bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText!,
      keyboardType: inputType,
      onChanged: onChange,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/core/constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.onChanged,
    this.maxLines = 1,
    this.controller,
    this.onSaved,
    this.validationText = 'Please enter some text',
  });

  final String hintText;
  final int maxLines;
  final TextEditingController? controller;
  final String validationText;
  final void Function(String?)? onSaved;

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(fontFamily: 'Cairo', ),

      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return validationText;
        }
        return null;
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kSecondaryColor,
      onChanged: onChanged,

      decoration: InputDecoration(
        hintText: hintText,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(kSecondaryColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}

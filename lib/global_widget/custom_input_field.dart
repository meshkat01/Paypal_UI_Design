import 'package:flutter/material.dart';
class CustomInputField extends StatelessWidget {
  final String title;
  final bool? secqured;
  const CustomInputField({super.key, required this.title, this.secqured });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secqured?? false,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40.0),
    borderSide: BorderSide(
    color: Colors.black.withOpacity(.4),
    width: 1.0
    ),
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(40.0),
    borderSide: BorderSide(
    color: Colors.blue.withOpacity(.4),
    width: 1.0
    ),
    ),
    border: InputBorder.none,
    hintText: title,
    ),
    );
  }
}

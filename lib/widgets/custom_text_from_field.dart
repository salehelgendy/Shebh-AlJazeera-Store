import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labeltext;
  final TextInputType? inputType;
  final TextEditingController? controller; // إضافة controller
  final bool obscureText;

  CustomTextField({
    this.obscureText = false,
    required this.labeltext,
    this.inputType,
    this.controller, // إضافة controller كوسيلة اختيارية
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
        right: 25,
        left: 25,
      ),
      child: TextFormField(
        controller: controller, // تمرير controller إلى TextFormField
        keyboardType: inputType,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.black),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          label: Text(labeltext),
          labelStyle: const TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: 'Enter Your $labeltext',
          hintStyle: const TextStyle(color: Colors.white38),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

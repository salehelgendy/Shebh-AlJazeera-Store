import 'package:flutter/material.dart';
import 'package:shebhaljazeerastore/Components/constants.dart';

class CustomTextBottom extends StatelessWidget {
  final String textbottom;
  final VoidCallback? onTap;

  // باني واحد يكفي هنا
  const CustomTextBottom({
    super.key,
    required this.textbottom,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 30.0, left: 25, right: 25, bottom: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: kPrimaryColor,
          ),
          child: Center(
            child: Text(
              textbottom,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

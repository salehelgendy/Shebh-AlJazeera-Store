import 'package:flutter/material.dart';

class AddToCartButtom extends StatelessWidget {
  const AddToCartButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'إضافة الي السلة',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

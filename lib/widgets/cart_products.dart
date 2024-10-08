import 'package:flutter/material.dart';
import 'package:shebhaljazeerastore/Components/addToCartButtom.dart';
import 'package:shebhaljazeerastore/Components/constants.dart';

class CartProduct extends StatelessWidget {
  String image;
  String nameProduct;
  String weightProduct = '400';

  CartProduct({
    super.key,
    required this.image,
    required this.nameProduct,
    required this.weightProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // clipBehavior: Clip.none,
      children: [
        Container(
          height: 320,
          width: 190,
          decoration: BoxDecoration(
            color: Colors.grey[50],
            border: Border.all(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Column(
          children: [
            Image.asset(
              image,
              width: 190,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              nameProduct,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'كيلو: $weightProduct ',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '4 SR',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: kPrimaryColor,
              ),
              child: const AddToCartButtom(),
            )
          ],
        )
      ],
    );
  }
}

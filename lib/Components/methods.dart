import 'package:flutter/material.dart';
import 'package:shebhaljazeerastore/Components/constants.dart';

Text NameApplication() {
  return const Text(
    kNameApp,
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: kPrimaryColor,
    ),
  );
}

Image LogoApplication() {
  return Image.asset(
    kLogo,
    width: 150,
    height: 150,
  );
}

Align NamePage() {
  return const Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: Text(
        'Log in',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

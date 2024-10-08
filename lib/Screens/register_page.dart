import 'package:flutter/material.dart';
import 'package:shebhaljazeerastore/Components/constants.dart';
import 'package:shebhaljazeerastore/widgets/CustemTextBottom.dart';
import 'package:shebhaljazeerastore/widgets/custom_text_from_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  static String id = 'RegisterPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              LogoApplication(),
              const SizedBox(
                height: 20,
              ),
              NameApplication(),
              const SizedBox(
                height: 80,
              ),
              NamePage(),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                labeltext: 'Phone',
                // onChanged: () {},
                inputType: TextInputType.number,
              ),
              CustomTextBottom(
                textbottom: 'Register',
                onTap: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      ' Login ',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Align NamePage() {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: Text(
          'Register',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
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
}

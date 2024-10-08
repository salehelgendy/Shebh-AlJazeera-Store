import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shebhaljazeerastore/Components/constants.dart';
import 'package:shebhaljazeerastore/Components/methods.dart';
import 'package:shebhaljazeerastore/Screens/register_page.dart';
import 'package:shebhaljazeerastore/widgets/CustemTextBottom.dart';
import 'package:shebhaljazeerastore/widgets/custom_text_from_field.dart';

class LoginPage extends StatefulWidget {
  static String id = 'loginPage';

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  bool showOtpField = false; // لعرض حقل إدخال OTP
  String verificationid = ''; // لحفظ معرف التحقق
  String errorMessage = ''; // لعرض رسائل الخطأ

  Future<void> verifyPhoneNumber() async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneController.text.trim(),
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
          log('Login Success');
          navigateToHomePage(); // الانتقال إلى الصفحة الرئيسية
        },
        verificationFailed: (FirebaseAuthException e) {
          setState(() {
            Center(
              child: Text(errorMessage = 'Verification Failed: ${e.message}'),
            );
          });
          log('Verification Failed: ${e.message}');
        },
        codeSent: (String verificationId, int? resendToken) {
          setState(() {
            verificationId = verificationId;
            showOtpField = true;
          });

          log('Code sent to the number');
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationId = verificationId;
        },
      );
    } catch (e) {
      setState(() {
        errorMessage = 'Error: $e';
      });
    }
  }

  void checkPhoneNumber() {
    String phone = phoneController.text.trim();
    if (phone.isNotEmpty) {
      // التحقق من الرقم
      verifyPhoneNumber();
    } else {
      setState(
        () {
          Center(
            child: Text(
              errorMessage = 'Please enter a valid phone number',
            ),
          );
        },
      );
    }
  }

  void signInWithOtp() async {
    String otp = otpController.text.trim();
    if (otp.isNotEmpty) {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationid,
        smsCode: otp,
      );
      try {
        await auth.signInWithCredential(credential);
        log('Login Success');
        navigateToHomePage();
      } catch (e) {
        setState(() {
          errorMessage = 'Incorrect OTP. Please try again.';
        });
        log('Login failed: $e');
      }
    } else {
      setState(() {
        errorMessage = 'Please enter the OTP';
      });
    }
  }

  void navigateToHomePage() {
    Navigator.pushReplacementNamed(context, 'HomePage.id');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              LogoApplication(),
              const SizedBox(height: 20),
              NameApplication(),
              const SizedBox(height: 80),
              NamePage(),
              const SizedBox(height: 20),
              CustomTextField(
                labeltext: 'Phone',
                controller: phoneController,
                inputType: TextInputType.phone,
              ),
              if (showOtpField)
                CustomTextField(
                  labeltext: 'Enter OTP',
                  controller: otpController,
                  inputType: TextInputType.number,
                ),
              const SizedBox(height: 20),
              CustomTextBottom(
                textbottom: 'Login',
                onTap: () {
                  if (showOtpField) {
                    signInWithOtp();
                  } else {
                    checkPhoneNumber();
                  }
                },
              ),
              if (errorMessage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    errorMessage,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    child: const Text(
                      ' Register ',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

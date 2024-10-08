import 'package:flutter/material.dart';
import 'package:shebhaljazeerastore/Screens/home_page.dart';
import 'package:shebhaljazeerastore/Screens/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shebhaljazeerastore/Screens/register_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ShebhAljazeeraStore());
}

class ShebhAljazeeraStore extends StatelessWidget {
  const ShebhAljazeeraStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => const RegisterPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}

import 'package:braille_print_prototype/screens/forgotpasswordscreen.dart';
import 'package:braille_print_prototype/screens/gatewayscreen.dart';
import 'package:braille_print_prototype/screens/loginscreen.dart';
import 'package:braille_print_prototype/screens/signupscreen.dart';
import 'package:braille_print_prototype/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
        SplashScreen.id: (context) => const SplashScreen(),
        GatewayScreen.id: (context) => const GatewayScreen(),
      },
    );
  }
}

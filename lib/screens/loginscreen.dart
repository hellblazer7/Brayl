import 'package:braille_print_prototype/screens/forgotpasswordscreen.dart';
import 'package:braille_print_prototype/screens/signupscreen.dart';
import 'package:flutter/material.dart';

import '../components/roundedbutton.dart';
import '../constants.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: kGradientBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 80.0,
              ),
              const Image(
                image: AssetImage(
                  'images/signin_up_image.png',
                ),
                height: 190.0,
                width: 130.0,
              ),
              const SizedBox(
                height: 50.0,
              ),
              const Text(
                'Welcome back! Sign in to continue.',
                textAlign: TextAlign.center,
                style: kSubtitleTextStyleMontserrat,
              ),
              const SizedBox(
                height: 60.0,
              ),
              TextField(
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Email',
                ),
              ),
              TextField(
                obscureText: true,
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Password',
                  suffixIcon: TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, ForgotPasswordScreen.id);
                    },
                    icon: const Icon(
                      Icons.icecream_outlined,
                      size: 0,
                    ),
                    label: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color(0xCC011526),
                          fontWeight: FontWeight.w700,
                          fontSize: 13.0,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 63.0),
                child: RoundedButton(
                  boxShadow: const BoxShadow(
                      blurRadius: 2.0,
                      color: Color(0xFF01111E),
                      offset: Offset(0, 1.5) // changes position of shadow
                      ),
                  color: const Color(0xAA01111E),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(14.0),
                  ),
                  onPressed: () {},
                  displayText: 'Sign In',
                  width: 0,
                  textColor: const Color(0xFFF8ECEC),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, SignUpScreen.id);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Color(0xFF011526),
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Color(0xFF011526),
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

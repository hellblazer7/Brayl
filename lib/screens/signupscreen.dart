import 'package:flutter/material.dart';

import '../components/roundedbutton.dart';
import '../constants.dart';
import 'LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? termsAndConditions = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: kGradientBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
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
                height: 30.0,
              ),
              const Text(
                'Not a member? Create an Account now',
                textAlign: TextAlign.center,
                style: kSubtitleTextStyleMontserrat,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Name',
                      ),
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
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: termsAndConditions,
                    activeColor: const Color(0xFF696969),
                    onChanged: (value) {
                      setState(() {
                        termsAndConditions = value;
                      });
                    },
                  ),
                  const Text(
                    "I agree with the",
                    style: TextStyle(
                      color: Color(0xFF011526),
                      fontSize: 13.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const Text(
                    " Terms ",
                    style: TextStyle(
                      color: Color(0xFF011526),
                      fontSize: 13.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "and",
                    style: TextStyle(
                      color: Color(0xFF011526),
                      fontSize: 13.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const Text(
                    " Conditions",
                    style: TextStyle(
                      color: Color(0xFF011526),
                      fontSize: 13.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 79.0),
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
                  displayText: 'Sign Up',
                  width: 0,
                  textColor: const Color(0xFFF8ECEC),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                ),
                onPressed: () {
                  Navigator.popAndPushNamed(context, LoginScreen.id);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Color(0xFF011526),
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xFF011526),
                        fontSize: 15.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
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

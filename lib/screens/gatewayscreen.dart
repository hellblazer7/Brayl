import 'package:braille_print_prototype/components/lefthorizontalline.dart';
import 'package:braille_print_prototype/components/righthorizontalline.dart';
import 'package:braille_print_prototype/screens/loginscreen.dart';
import 'package:braille_print_prototype/screens/signupscreen.dart';
import 'package:flutter/material.dart';

import '../components/roundedbutton.dart';
import '../constants.dart';

class GatewayScreen extends StatefulWidget {
  static const String id = 'gateway_screen';
  const GatewayScreen({Key? key}) : super(key: key);

  @override
  State<GatewayScreen> createState() => _GatewayScreenState();
}

class _GatewayScreenState extends State<GatewayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: kGradientBackground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Image(
                image: AssetImage('images/gateway_screen_image.png'),
                height: 290.0,
                width: 280.0,
              ),
            ),
            const SizedBox(
              height: 70.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95.0),
              child: RoundedButton(
                boxShadow: const BoxShadow(
                  blurRadius: 7.8,
                  spreadRadius: -15.0,
                  offset: Offset(5, 0),
                  color: Color(0xFF01111E), // changes position of shadow
                ),
                color: const Color(0xFF01111E),
                borderRadius: const BorderRadius.all(
                  Radius.circular(14.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.id);
                },
                displayText: 'Create Account',
                width: 0,
                textColor: const Color(0xFFF8ECEC),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomPaint(painter: LeftHorizontalLine()),
                const Text(
                  "Already a Member?",
                  style: TextStyle(
                    color: Color(0xFFF8ECEC),
                    fontSize: 14.0,
                    fontFamily: 'Montserrat',
                  ),
                ),
                CustomPaint(painter: RightHorizontalLine()),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 95.0),
              child: RoundedButton(
                boxShadow: const BoxShadow(
                  color: Color(0x660BB3D9),
                  blurRadius: 7.8,
                  spreadRadius: -15.0,
                  offset: Offset(5, 0),
                ),
                color: const Color(0x990BB3D9),
                borderRadius: const BorderRadius.all(
                  Radius.circular(14.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                displayText: 'Sign In',
                width: 0,
                textColor: const Color(0xFFF8ECEC),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

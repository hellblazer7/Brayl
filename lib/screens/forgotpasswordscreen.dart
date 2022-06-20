import 'package:flutter/material.dart';

import '../components/roundedbutton.dart';
import '../constants.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const String id = 'forgot_password_screen';
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: kGradientBackground,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 60.0,
            ),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Color(0xFF011526)),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Color(0xFF011526),
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(
                  width: 30.0,
                ),
                const Text(
                  'Password reset',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19.0,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF011526),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            const Image(
              image: AssetImage(
                'images/forgot_password_image.png',
              ),
              height: 130.0,
              width: 190.0,
            ),
            const SizedBox(
              height: 45.0,
            ),
            Text(
              'Forgot Password?',
              textAlign: TextAlign.center,
              style: kTitleTextStylePoppins.copyWith(
                fontSize: 30.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 27.0,
                vertical: 20.0,
              ),
              child: Text(
                'Enter a registered email id to receive an email with instructions to reset password.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF011526),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              height: 85.0,
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
                displayText: 'Continue',
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

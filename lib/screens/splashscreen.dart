import 'package:flutter/material.dart';

import '../constants.dart';
import 'gatewayscreen.dart';

class SplashScreen extends StatelessWidget {
  static const String id = 'splash_screen';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.popAndPushNamed(context, GatewayScreen.id);
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [Color(0xFF034873), Color(0xFF0BB3D9)],
              radius: 2.8,
              focalRadius: 0.2,
              center: Alignment(0.5, 1.5),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.center,
                children: const [
                  Image(
                    image: AssetImage('images/logo_pad.png'),
                    height: 200.0,
                    width: 240.0,
                    colorBlendMode: BlendMode.dst,
                  ),
                  Image(
                    image: AssetImage('images/logo.png'),
                    height: 155.0,
                    width: 180.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 80.0,
              ),
              const Image(
                image: AssetImage('images/printer_splash.png'),
                height: 260.0,
                width: 330.0,
              ),
              const SizedBox(
                height: 70.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

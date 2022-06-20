import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.only(
    top: 20.0,
    bottom: 20.0,
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF011526),
    ),
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFF011526),
    ),
  ),
  hintStyle: TextStyle(
    fontFamily: 'Montserrat',
    color: Color(0x80011526),
    fontSize: 17.0,
  ),
);
const kTitleTextStylePoppins = TextStyle(
  fontSize: 41.0,
  fontFamily: 'Poppins',
  color: Color(0xFF011526),
  fontWeight: FontWeight.w600,
);
const kSubtitleTextStyleMontserrat = TextStyle(
  fontSize: 16.0,
  fontFamily: 'Montserrat',
  color: Color(0xFF011525),
  fontWeight: FontWeight.w800,
);
const kGradientBackground = RadialGradient(
  colors: [Color(0xFF0BB3D9), Color(0xFF034873)],
  radius: 2.2,
  focalRadius: 0.2,
  center: Alignment(0.5, 0.8),
);

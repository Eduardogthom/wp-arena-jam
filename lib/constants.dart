import 'package:flutter/material.dart';

// Component colors
const kGray = Color(0xFF3C3C44);
const kdisabledGray = Color(0xFFC4C4C4);
const kBlack = Color(0xFF18181C);
const kWhite = Color(0xFFFFFFFF);
const kCrimson = Color(0xffDC143C);
const kGrayAlt = Color(0xFF3C3C44);

// Logo colors
const kBlue = Color(0xFF00E1FF);
const kPink = Color(0xFFFF0098);

// Support
const kLink = Color(0xFF91623A);

const kDefaultTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white,
  fontWeight: FontWeight.normal,
  fontSize: 20.0,
);

const kDefaultRuleStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white,
  fontWeight: FontWeight.normal,
  fontSize: 16.0,
);

const kGreetingTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white,
  fontWeight: FontWeight.normal,
  fontSize: 20.0,
);

const kSubTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  color: Colors.white,
  fontWeight: FontWeight.normal,
  fontSize: 14.0,
);

const kActiveFilterTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
  shadows: [Shadow(color: Colors.white, offset: Offset(0, -10))],
  color: Colors.transparent,
  decoration: TextDecoration.underline,
  decorationColor: Colors.white,
  decorationThickness: 1.5,
);

const kUnactiveFilterTextStyle = TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
  shadows: [Shadow(color: Colors.white, offset: Offset(0, -10))],
  color: Colors.transparent,
  decoration: TextDecoration.underline,
  decorationColor: Colors.transparent,
  decorationThickness: 1.5,
);

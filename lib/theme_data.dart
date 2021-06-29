import 'package:flutter/material.dart';
import 'package:flutter/src/material/text_button.dart';

//colors
const primaryColor = Color(0xFF649230);
const primarySoftColor = Color(0xFF354820);
const secondaryColor = Color(0xFF8B8B8A);
const successColor = Color(0xFF66C35E);
const infoColor = Color(0xFF00AACF);
const warningColor = Color(0xFFFED47E);
const dangerColor = Color(0xFFFC4C3F);
const darkBG = Color(0xFF161615);
const lightBG = Color(0xFFFFFFFF);
const Color gray50 = Color(0xFFE8E8E8);
const Color gray500 = Color(0xFF737373);
const Color gray800 = Color(0xFF2D2D2C);
const Color gray700 = Color(0xFF454544);
const Color gray200 = Color(0xFFB9B9B9);
const Color gray300 = Color(0xFFA2A2A1);

const String defaultFont = 'Nunito';

const TextStyle heading1Style = TextStyle(fontSize: 39, color: Colors.white);

const TextStyle heading2Style = TextStyle(fontSize: 31, color: Colors.white);

const TextStyle heading3Style = TextStyle(fontSize: 25, color: Colors.white);

const TextStyle heading4Style = TextStyle(fontSize: 20, color: Colors.white);

const TextStyle heading5Style = TextStyle(fontSize: 16, color: Colors.white);

const TextStyle body1Style = TextStyle(fontSize: 13, color: Colors.white);

const TextStyle body2Style = TextStyle(fontSize: 10, color: Colors.white);

const TextStyle captionStyle = TextStyle(fontSize: 8, color: Colors.white);

const TextStyle overlineStyle = TextStyle(fontSize: 7, color: Colors.white);

const Radius radius24 = Radius.circular(24);

//button themes
final ButtonStyle outlinePrimaryB16ButtonStyle = TextButton.styleFrom(
  minimumSize: Size(double.infinity, 56),
  primary: primaryColor,
  backgroundColor: gray800,
  textStyle: TextStyle(
      fontSize: 13, fontFamily: defaultFont, fontWeight: FontWeight.w700),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
      side: BorderSide(color: primaryColor)),
);

final ButtonStyle darkB16ButtonStyle = TextButton.styleFrom(
  minimumSize: Size(double.infinity, 56),
  primary: gray50,
  backgroundColor: gray800,
  textStyle: TextStyle(
      fontSize: 13,
      color: gray50,
      fontFamily: defaultFont,
      fontWeight: FontWeight.w700),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    // side: BorderSide(color: primaryColor)
  ),
);
final ButtonStyle primaryB32ButtonStyle = TextButton.styleFrom(
  minimumSize: Size(double.infinity, 56),
  primary: gray50,
  backgroundColor: primaryColor,
  textStyle: TextStyle(
      fontSize: 13,
      color: gray50,
      fontFamily: defaultFont,
      fontWeight: FontWeight.w700),
  padding: EdgeInsets.symmetric(horizontal: 16.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(32)),
    // side: BorderSide(color: primaryColor)
  ),
);

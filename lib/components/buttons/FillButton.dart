import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class FillButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  final double height;
  final VoidCallback onPressed;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final double padding;
  final double radius;
  final Color borderColor;

  const FillButton({
    Key key,
    @required this.onPressed,
    this.fillColor = primaryColor,
    this.text = "",
    this.height = 56,
    this.textColor = gray50,
    this.fontSize = 13,
    this.fontWeight = FontWeight.w700,
    this.padding = 16,
    this.radius = 16,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (borderColor != null)
      return TextButton(
        onPressed: onPressed,
        child: Text(text),
        style: TextButton.styleFrom(
          minimumSize: Size(double.infinity, height),
          primary: textColor,
          backgroundColor: fillColor,
          textStyle: TextStyle(
              fontSize: fontSize,
              fontFamily: defaultFont,
              fontWeight: fontWeight),
          padding: EdgeInsets.symmetric(horizontal: padding),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              side: BorderSide(color: borderColor)),
        ),
      );
    return TextButton(
        onPressed: onPressed,
        child: Text(text),
        style: TextButton.styleFrom(
          minimumSize: Size(double.infinity, height),
          primary: textColor,
          backgroundColor: fillColor,
          textStyle: TextStyle(
              fontSize: fontSize,
              fontFamily: defaultFont,
              fontWeight: fontWeight),
          padding: EdgeInsets.symmetric(horizontal: padding),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class CustomTextField extends StatelessWidget {
  final double radius;
  final Color textColor;
  final Color fillColor;
  final Icon icon;
  final String hintText;

  const CustomTextField({
    Key key,
    this.radius = 28,
    this.textColor = gray50,
    this.fillColor = gray800,
    this.icon = const Icon(Icons.view_headline, color: gray50),
    this.hintText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: textColor),
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(this.radius)),
            borderSide: BorderSide.none,
          ),
          filled: true,
          hintText: '$hintText',
          hintStyle: TextStyle(color: gray500),
          fillColor: fillColor,
          prefixIcon: icon),
    );
  }
}

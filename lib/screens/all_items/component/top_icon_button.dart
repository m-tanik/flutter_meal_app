import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

//Top 3 icons in this page
class TopIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final Color color;
  final Color iconColor;

  TopIconButton(
      {@required this.onTap, @required this.icon, this.color, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(18), color: color),
      padding: EdgeInsets.all(6),
      child: IconButton(
        alignment: Alignment.center,
        color: Colors.white,
        iconSize: 24,
        icon: Icon(
          icon,
          color: iconColor,
        ),
        disabledColor: gray200,
        focusColor: primaryColor,
        onPressed: onTap,
      ),
    );
  }
}

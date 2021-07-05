import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

//Top 3 icons in this page
class TopIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final Color color;

  TopIconButton({@required this.onTap, @required this.icon, this.color});

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
        icon: Icon(icon),
        disabledColor: gray200,
        focusColor: primaryColor,
        onPressed: onTap,
      ),
    );
  }
}

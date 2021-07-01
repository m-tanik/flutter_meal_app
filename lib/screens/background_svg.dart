import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/food_background_component.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          FoodBackgroundComponent(),
          child,
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FoodBackgroundComponent extends StatelessWidget {
  const FoodBackgroundComponent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
          'assets/images/food_background.svg',
          width: size.width * 1.5,
          color: Color(0x80FFFFFF),
        ));
  }
}

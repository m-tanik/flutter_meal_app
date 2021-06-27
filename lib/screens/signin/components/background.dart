import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/food_background_component.dart';

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
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF98C960),
              const Color(0xFF2C5300),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
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

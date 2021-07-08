import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class NutrationFactContainer extends StatelessWidget {
  final int value;

  final bool isPaused;

  final String nutrationName;

  const NutrationFactContainer(
      {Key key, this.value, this.isPaused, this.nutrationName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$nutrationName',
          style: TextStyle(
              fontSize: 10,
              color: isPaused ? gray200.withOpacity(0.2) : Color(0xFFFED47E)),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '$value',
          style: TextStyle(
              fontSize: 10,
              color: isPaused ? gray200.withOpacity(0.2) : gray50),
        ),
      ],
    );
  }
}

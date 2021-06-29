import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class ColorIndicator extends StatelessWidget {
  final Color color;
  final String text;

  const ColorIndicator({Key key, this.color, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 8,
          width: 12,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .merge(TextStyle(fontWeight: FontWeight.w700, color: gray300)),
          ),
        )
      ],
    );
  }
}

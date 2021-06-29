import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class CalendarDay extends StatelessWidget {
  final String date;
  final String style;
  final bool isSelected;
  final Function onTap;

  const CalendarDay({
    Key key,
    this.date,
    this.style,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Container(
            height: 40,
            decoration: isSelected
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: primaryColor,
                      // red as border color
                    ),
                  )
                : null,
            alignment: Alignment.center,
            child: Text(this.date,
                style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(
                    color: style == "cal-available"
                        ? gray50
                        : style == "cal-ordered"
                            ? primaryColor
                            : style == "cal-passed"
                                ? gray300
                                : style == "cal-unavailable"
                                    ? dangerColor
                                    : style == "cal-paused"
                                        ? warningColor
                                        : gray500))),
          ),
        ),
      ),
    );
  }
}

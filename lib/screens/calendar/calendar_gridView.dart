import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:scale_kuwait_mobile_app/screens/calendar/componets/background.dart';
import 'package:scale_kuwait_mobile_app/screens/calendar/componets/calendar_day_model.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

import 'componets/calendar_day.dart';
import 'componets/color_indicator.dart';

class CalenderGridView extends StatefulWidget {
  @override
  _CalenderGridViewState createState() => _CalenderGridViewState();
}

class _CalenderGridViewState extends State<CalenderGridView> {
  int currentDate = 15;
  updateSelectedDay(String day, String style) {
    if (style == "cal-unavailable") {
      Fluttertoast.showToast(
          msg: "This date is not available for you or has no menu",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: secondaryColor,
          textColor: gray50,
          fontSize: 16.0);
    } else
      setState(() {
        try {
          currentDate = int.parse(day);
        } on FormatException {
          Fluttertoast.showToast(
              msg: "Select a valid date",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: secondaryColor,
              textColor: gray50,
              fontSize: 16.0);
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    List<String> weekNameList = [
      "Sun",
      "Mon",
      "Tue",
      "Wed",
      "Thu",
      "Fri",
      "Sat"
    ];
    List<CalendarDayData> week_1 = [
      CalendarDayData("", "", "2021", "October"),
      CalendarDayData("", "", "2021", "October"),
      CalendarDayData("", "", "2021", "October"),
      CalendarDayData("1", "cal-passed", "2021", "October"),
      CalendarDayData("2", "cal-passed", "2021", "October"),
      CalendarDayData("3", "cal-unavailable", "2021", "October"),
      CalendarDayData("4", "cal-passed", "2021", "October"),
    ];
    List<CalendarDayData> week_2 = [
      CalendarDayData("5", "cal-passed", "2021", "October"),
      CalendarDayData("6", "cal-passed", "2021", "October"),
      CalendarDayData("7", "cal-ordered", "2021", "October"),
      CalendarDayData("8", "cal-ordered", "2021", "October"),
      CalendarDayData("9", "cal-ordered", "2021", "October"),
      CalendarDayData("10", "cal-unavailable", "2021", "October"),
      CalendarDayData("11", "cal-ordered", "2021", "October"),
    ];
    List<CalendarDayData> week_3 = [
      CalendarDayData("12", "cal-ordered", "2021", "October"),
      CalendarDayData("13", "cal-ordered", "2021", "October"),
      CalendarDayData("14", "cal-ordered", "2021", "October"),
      CalendarDayData("15", "cal-ordered", "2021", "October"),
      CalendarDayData("16", "cal-ordered", "2021", "October"),
      CalendarDayData("17", "cal-unavailable", "2021", "October"),
      CalendarDayData("18", "cal-available", "2021", "October"),
    ];
    List<CalendarDayData> week_4 = [
      CalendarDayData("19", "cal-ordered", "2021", "October"),
      CalendarDayData("20", "cal-paused", "2021", "October"),
      CalendarDayData("21", "cal-paused", "2021", "October"),
      CalendarDayData("22", "cal-ordered", "2021", "October"),
      CalendarDayData("23", "cal-ordered", "2021", "October"),
      CalendarDayData("24", "cal-unavailable", "2021", "October"),
      CalendarDayData("25", "cal-available", "2021", "October"),
    ];
    List<CalendarDayData> week_5 = [
      CalendarDayData("26", "cal-available", "2021", "October"),
      CalendarDayData("27", "cal-available", "2021", "October"),
      CalendarDayData("28", "cal-paused", "2021", "October"),
      CalendarDayData("29", "cal-available", "2021", "October"),
      CalendarDayData("30", "cal-available", "2021", "October"),
      CalendarDayData("31", "cal-unavailable", "2021", "October"),
      CalendarDayData("", "", "2021", "October"),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBG,
      ),
      body: Background(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // month name and month Icons.navigation container
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "October, 2021",
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .merge(TextStyle(fontWeight: FontWeight.w700)),
                          ),
                          flex: 3,
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 56,
                                  width: 56,
                                  decoration: BoxDecoration(
                                    color: gray700,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: primaryColor,
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 56,
                                  width: 56,
                                  decoration: BoxDecoration(
                                    color: gray700,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: primaryColor,
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // color indicator container
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                    child: Container(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            ColorIndicator(
                              color: primaryColor,
                              text: "Order Placed",
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: ColorIndicator(
                              color: warningColor,
                              text: "Paused",
                            )),
                            Expanded(
                                flex: 2,
                                child: ColorIndicator(
                                  color: gray50,
                                  text: "Available",
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: ColorIndicator(
                              color: dangerColor,
                              text: "Not Available",
                            )),
                            Expanded(
                                flex: 2,
                                child: ColorIndicator(
                                  color: gray300,
                                  text: "Passed",
                                )),
                          ],
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 32, 0, 25),
                    child: Divider(
                      color: gray500,
                    ),
                  ),
                  Row(
                    children: weekNameList
                        .map((e) => Expanded(
                                child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              child: Text(
                                e,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .merge(
                                        TextStyle(fontWeight: FontWeight.w700)),
                              ),
                            )))
                        .toList(),
                  ),
                  Row(
                    children: week_1
                        .map((day) => CalendarDay(
                              date: day.date,
                              style: day.styleClass,
                              isSelected: currentDate.toString() == day.date
                                  ? true
                                  : false,
                              onTap: () {
                                updateSelectedDay(day.date, day.styleClass);
                              },
                            ))
                        .toList(),
                  ),
                  Row(
                    children: week_2
                        .map((day) => CalendarDay(
                              date: day.date,
                              style: day.styleClass,
                              isSelected: currentDate.toString() == day.date
                                  ? true
                                  : false,
                              onTap: () {
                                updateSelectedDay(day.date, day.styleClass);
                              },
                            ))
                        .toList(),
                  ),
                  Row(
                    children: week_3
                        .map((day) => CalendarDay(
                              date: day.date,
                              style: day.styleClass,
                              isSelected: currentDate.toString() == day.date
                                  ? true
                                  : false,
                              onTap: () {
                                updateSelectedDay(day.date, day.styleClass);
                              },
                            ))
                        .toList(),
                  ),
                  Row(
                    children: week_4
                        .map((day) => CalendarDay(
                              date: day.date,
                              style: day.styleClass,
                              isSelected: currentDate.toString() == day.date
                                  ? true
                                  : false,
                              onTap: () {
                                updateSelectedDay(day.date, day.styleClass);
                              },
                            ))
                        .toList(),
                  ),
                  Row(
                    children: week_5
                        .map((day) => CalendarDay(
                              date: day.date,
                              style: day.styleClass,
                              isSelected: currentDate.toString() == day.date
                                  ? true
                                  : false,
                              onTap: () {
                                updateSelectedDay(day.date, day.styleClass);
                              },
                            ))
                        .toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

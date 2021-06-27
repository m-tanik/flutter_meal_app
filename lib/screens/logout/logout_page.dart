import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class LogoutPage extends StatefulWidget {
  const LogoutPage({Key key}) : super(key: key);

  @override
  _LogoutPageState createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Are you sure you want to',
                      style: heading4Style,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Log Out?',
                      style: heading3Style,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  FillButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    fillColor: Color(0xffFC4C3F),
                    text: 'Logout',
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  FillButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    fillColor: gray800,
                    text: 'Cancel',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

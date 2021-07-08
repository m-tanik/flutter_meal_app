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
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 32),
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
                      style: Theme.of(context).textTheme.headline3.merge(
                            TextStyle(
                                fontWeight: FontWeight.w400, color: gray50),
                          ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Log Out?',
                      style: Theme.of(context).textTheme.headline3.merge(
                            TextStyle(
                                fontWeight: FontWeight.w700, color: gray50),
                          ),
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
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    textColor: gray50,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  FillButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    fillColor: gray800,
                    text: 'Cancel',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    textColor: gray50,
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

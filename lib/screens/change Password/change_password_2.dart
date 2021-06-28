import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'change_password_3.dart';

class ChangePassword2 extends StatelessWidget {
  const ChangePassword2({Key key}) : super(key: key);

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
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: primaryColor,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Change password',
                    style: heading3Style,
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                'To change your password a verification email has to be sent to johnwilliam@email.com',
                style: TextStyle(
                  fontSize: 15,
                  color: gray50,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            FillButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangePassword3(),
                  ),
                );
              },
              fillColor: gray700,
              text: 'Send verification',
            ),
          ],
        ),
      ),
    );
  }
}

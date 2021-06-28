import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/change%20Password/change_password_4.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'change_password_4.dart';

class ChangePassword3 extends StatelessWidget {
  const ChangePassword3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Verification email sent',
                    style: heading3Style,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      'Please follow the instructions there, then press continue to reset your password',
                      style: TextStyle(
                        fontSize: 15,
                        color: gray50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FillButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangePassword4(),
                  ),
                );
              },
              fillColor: gray700,
              text: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'change_password_3.dart';

class ChangePassword2 extends StatelessWidget {
  const ChangePassword2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: darkBG,
        iconTheme: IconThemeData(
          color: primaryColor, //change your color here
        ),
      ),
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
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Text(
                    'Change password',
                    style: Theme.of(context).textTheme.headline3.merge(
                          TextStyle(fontWeight: FontWeight.w700, color: gray50),
                        ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                'To change your password a verification email has to be sent to johnwilliam@email.com',
                style: Theme.of(context).textTheme.bodyText1.merge(
                      TextStyle(
                          fontWeight: FontWeight.w400,
                          color: gray50,
                          fontSize: 15),
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
              fontSize: 16,
              fontWeight: FontWeight.w700,
              textColor: gray50,
            ),
          ],
        ),
      ),
    );
  }
}

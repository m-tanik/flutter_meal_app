import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class EditProfileEmail extends StatefulWidget {
  const EditProfileEmail({Key key}) : super(key: key);

  @override
  _EditProfileEmailState createState() => _EditProfileEmailState();
}

class _EditProfileEmailState extends State<EditProfileEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Email',
                    style: heading4Style,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'johnwilliam@gmail.com',
                    style: heading5Style,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '(confirmed)',
                    style: TextStyle(
                      fontSize: 10,
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

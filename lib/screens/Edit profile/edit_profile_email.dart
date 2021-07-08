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
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.headline3.merge(
                          TextStyle(fontWeight: FontWeight.w700, color: gray50),
                        ),
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
                    style: Theme.of(context).textTheme.bodyText1.merge(
                          TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.white),
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '(confirmed)',
                    style: Theme.of(context).textTheme.bodyText2.merge(
                          TextStyle(
                              fontWeight: FontWeight.w400, color: primaryColor),
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

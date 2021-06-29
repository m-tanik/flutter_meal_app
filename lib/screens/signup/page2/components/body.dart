import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/components/custom_text_field.dart';
import 'package:scale_kuwait_mobile_app/screens/signup/page3/signup_screen_page3.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(34, 56, 34, 0),
        child: ListView(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  alignment: Alignment.centerLeft,
                  icon: Icon(
                    Icons.arrow_back_outlined,
                    color: primaryColor,
                  ),
                  // TODO: Implement back navigation functionality
                  onPressed: () {}),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 27, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tell Us Your Name",
                  style: Theme.of(context).textTheme.headline3.merge(
                      TextStyle(color: gray50, fontWeight: FontWeight.w700)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 27, 0, 4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "FIRST NAME",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .merge(TextStyle(color: gray200)),
                ),
              ),
            ),
            CustomTextField(
              icon: Icon(
                Icons.perm_identity_outlined,
                color: gray50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 18, 0, 4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "MIDDLE NAME",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .merge(TextStyle(color: gray200)),
                ),
              ),
            ),
            CustomTextField(
              icon: Icon(
                Icons.perm_identity_outlined,
                color: gray50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(45, 18, 0, 4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "LAST NAME",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .merge(TextStyle(color: gray200)),
                ),
              ),
            ),
            CustomTextField(
              icon: Icon(
                Icons.perm_identity_outlined,
                color: gray50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 66, 0, 0),
              child: FillButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignupScreenPage3();
                  }));
                },
                text: "Create Your Account",
                radius: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

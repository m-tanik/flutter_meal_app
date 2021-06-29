import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/components/curve_clipper.dart';
import 'package:scale_kuwait_mobile_app/components/custom_text_field.dart';
import 'package:scale_kuwait_mobile_app/screens/signin/signin_screen.dart';
import 'package:scale_kuwait_mobile_app/screens/signup/page2/signup_screen_page2.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isChecked = false;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return gray700;
      }
      return gray700;
    }

    return Background(
      child: Stack(
        children: <Widget>[
          Positioned(
              left: 32,
              top: 55,
              right: 32,
              child: Text(
                // TODO: change to locale
                "Create Account",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .merge(TextStyle(fontWeight: FontWeight.w700)),
              )),
          Positioned(
              bottom: 0,
              width: size.width,
              height: 520,
              child: ClipPath(
                clipper: CurveClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // width: 200,
                  height: 470,
                  color: darkBG,
                ),
              )),
          Positioned(
              bottom: 0,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(34, 0, 34, 27),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 0, 0, 4),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "EMAIL",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .merge(TextStyle(color: gray200)),
                        ),
                      ),
                    ),
                    CustomTextField(
                      icon: Icon(
                        Icons.mail,
                        color: gray50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(45, 18, 0, 4),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PASSWORD",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .merge(TextStyle(color: gray200)),
                        ),
                      ),
                    ),
                    // TODO: make this field password input
                    CustomTextField(
                      icon: Icon(
                        Icons.vpn_key,
                        color: gray50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(22, 13, 0, 29),
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'I HAVE READ THE ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .merge(TextStyle(color: gray50)),
                              children: <TextSpan>[
                                TextSpan(
                                  // TODO: change the login into button
                                  text: ' PRIVACY POLICY ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      .merge(TextStyle(color: primaryColor)),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Checkbox(
                              value: false,
                              checkColor: primaryColor,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),

                              // TODO: change the onChanged function
                              onChanged: (bool value) {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    FillButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignupScreenPage2();
                        }));
                      },
                      text: "Continue",
                      radius: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 43, 0, 0),
                      child: RichText(
                        text: TextSpan(
                          text: 'ALREADY HAVE AN ACCOUNT? ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .merge(TextStyle(color: gray50)),
                          children: <TextSpan>[
                            TextSpan(
                              // TODO: change the login into button
                              text: ' LOGIN',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .merge(TextStyle(color: primaryColor)),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SigninScreen();
                                  }));
                                },
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

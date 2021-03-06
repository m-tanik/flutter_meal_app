import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/generated/l10n.dart';
import 'package:scale_kuwait_mobile_app/screens/onboarding_slider/onboarding_slider_screen.dart';
import 'package:scale_kuwait_mobile_app/screens/welcome/welcome_select_language/components/background.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class Body extends StatefulWidget {
  final void Function(String) onLanguageChange;

  const Body({Key key, this.onLanguageChange}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Locale myLocale;
  @override
  Widget build(BuildContext context) {
    myLocale = Localizations.localeOf(context);
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Stack(
        children: <Widget>[
          Positioned(
              left: 32,
              top: 55,
              right: 32,
              child: Text(
                S.of(context).helloWorld,
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    .merge(TextStyle(fontWeight: FontWeight.w700)),
              )),
          Positioned(
              bottom: 0,
              width: size.width,
              height: 389,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: radius24, topRight: radius24),
                  color: darkBG,
                ),
                padding: const EdgeInsets.all(32.0),
                child: Stack(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Positioned(
                      top: 32,
                      left: 0,
                      child: Localizations.override(
                        context: context,
                        locale: Locale.fromSubtags(languageCode: 'en'),
                        child: Text(
                          "Please select a language (?????????? ??????????):",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .merge(TextStyle(color: gray50)),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(0, 32, 0, 45.5),
                    //   child:
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 95.5, 0, 0),
                      child: Column(
                        children: [
                          FillButton(
                            onPressed: () {
                              widget.onLanguageChange('ar');
                            },
                            text: "????????",
                            borderColor: (myLocale.toString() == "ar")
                                ? primaryColor
                                : null,
                            fillColor: gray800,
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0, 16, 0, 45.5),
                              child: FillButton(
                                onPressed: () {
                                  widget.onLanguageChange('en');
                                },
                                text: "English",
                                borderColor: (myLocale.toString() == "en")
                                    ? primaryColor
                                    : null,
                                fillColor: gray800,
                              )),
                          FillButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return OnboardingSliderScreen();
                              }));
                            },
                            text: S.of(context).btn_proceed,
                            radius: 32,
                          ),
                        ],
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

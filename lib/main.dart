import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/blur_test.dart';
import 'package:scale_kuwait_mobile_app/screens/calendar/calendar_gridView.dart';
import 'package:scale_kuwait_mobile_app/screens/onboarding_slider/onboarding_slider_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:scale_kuwait_mobile_app/screens/profile/profile_screen.dart';
import 'package:scale_kuwait_mobile_app/screens/signin/signin_screen.dart';
import 'package:scale_kuwait_mobile_app/screens/signup/page1/signup_screen.dart';
import 'package:scale_kuwait_mobile_app/screens/signup/page2/signup_screen_page2.dart';
import 'package:scale_kuwait_mobile_app/screens/signup/page3/signup_screen_page3.dart';
import 'package:scale_kuwait_mobile_app/screens/welcome/welcome_select_language/welcome_select_language_screen.dart';
import 'package:scale_kuwait_mobile_app/screens/welcome_message/welcome_message_screen.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static SharedPreferences prefs;
  Locale _locale = Locale.fromSubtags(languageCode: 'en');

  void updateLanguage(String languageCode) {
    setState(() {
      prefs.setString('user_language', languageCode);
      _locale = Locale.fromSubtags(languageCode: languageCode);
    });
  }

  void initState() {
    getLangugea();
    super.initState();
  }

  Future getLangugea() async {
    prefs = await SharedPreferences.getInstance();
    _locale = Locale.fromSubtags(
        languageCode: prefs.getString('user_language') ?? 'en');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('ar', ''),
      ],
      theme: ThemeData(
          fontFamily: defaultFont,
          primaryColor: primaryColor,
          scaffoldBackgroundColor: darkBG,
          textTheme: TextTheme(
              headline1: heading1Style,
              headline2: heading2Style,
              headline3: heading3Style,
              headline4: heading4Style,
              headline5: heading5Style,
              bodyText1: body1Style,
              bodyText2: body2Style,
              caption: captionStyle,
              overline: overlineStyle)),
      home: WelcomeSelectLanguageScreen(onLaguageChange: updateLanguage),
      // home: OnboardingSliderScreen(),
      // home: SignupScreenPage3(),
      // home: WelcomeMessage(),
    );
  }
}

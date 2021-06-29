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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

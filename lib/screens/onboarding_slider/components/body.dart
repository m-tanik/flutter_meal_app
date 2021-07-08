import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/screens/all_items/all_items.dart';
import 'package:scale_kuwait_mobile_app/screens/onboarding_slider/components/background.dart';
import 'package:scale_kuwait_mobile_app/screens/onboarding_slider/components/data.dart';
import 'package:scale_kuwait_mobile_app/screens/pages/pages.dart';
import 'package:scale_kuwait_mobile_app/screens/signup/page1/signup_screen.dart';
import 'package:scale_kuwait_mobile_app/screens/welcome_message/welcome_message_screen.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int totalPages = OnboardingItems.loadOnboardingItem().length;
    return Background(
      child: PageView.builder(
          controller: pageController,
          itemCount: totalPages,
          itemBuilder: (BuildContext context, int index) {
            OnboardingItem oi = OnboardingItems.loadOnboardingItem()[index];
            return Container(
              height: size.height,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupScreen()));
                          },
                          child:
                              index != totalPages - 1 ? Text("Skip") : Text(""),
                          style: TextButton.styleFrom(
                              primary: gray50,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .merge(
                                      TextStyle(fontWeight: FontWeight.w600))))
                    ],
                  ),
                  SvgPicture.asset(
                    oi.image,
                    height: size.height * .3,
                  ),
                  Column(
                    children: [
                      Text(
                        oi.title,
                        style: Theme.of(context).textTheme.headline1.merge(
                            TextStyle(
                                fontWeight: FontWeight.w700,
                                color: primaryColor)),
                      ),
                      Text(
                        oi.subtitle,
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                  if (index != totalPages - 1)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 250,
                          height: 35,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: totalPages,
                            itemBuilder: (BuildContext context, int i) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: index == i ? primaryColor : gray700,
                                    borderRadius: index == i
                                        ? BorderRadius.all(Radius.circular(3))
                                        : BorderRadius.all(
                                            Radius.circular(50))),
                                width: 20,
                                margin: const EdgeInsets.all(8),
                              );
                            },
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              pageController.jumpToPage(
                                index + 1,
                              );
                            },
                            child: Text("Next >"),
                            style: TextButton.styleFrom(
                                primary: primaryColor,
                                textStyle: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .merge(TextStyle(
                                        fontWeight: FontWeight.w600))))
                      ],
                    )
                  else
                    FillButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignupScreen();
                        }));
                      },
                      text: 'Get Started',
                      radius: 32,
                    )
                ],
              ),
            );
          }),
    );
  }
}

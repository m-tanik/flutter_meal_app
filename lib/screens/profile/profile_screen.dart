import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/screens/profile/components/background.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 37, 0, 0),
            child: Center(
                child: Column(
              children: [
                Image.asset('assets/images/avater.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: Text(
                    "John Watson",
                    style: Theme.of(context).textTheme.headline4.merge(
                        TextStyle(
                            fontWeight: FontWeight.w700, color: primaryColor)),
                  ),
                ),
                Text(
                  "11321654865",
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 49, 32, 0),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: primarySoftColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(45),
                          bottomRight: Radius.circular(45))),
                  child: Padding(
                    padding: const EdgeInsets.all(41),
                    child: Container(
                      height: 85,
                      child: Column(
                        children: [
                          Expanded(
                            child: Icon(
                              Icons.favorite,
                              color: primaryColor,
                            ),
                          ),
                          Expanded(
                              child: Text(
                            "Bodybuilding",
                            style: Theme.of(context).textTheme.headline5.merge(
                                TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: gray50)),
                          )),
                          Expanded(
                              child: Text(
                            "26 days",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .merge(TextStyle(color: gray200)),
                          ))
                        ],
                      ),
                    ),
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(28, 0, 0, 0),
                  child: Container(
                    height: 136,
                    child: Column(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            Icon(
                              Icons.hourglass_full,
                              color: primaryColor,
                              size: 14,
                            ),
                            Text(
                              " Remaining",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .merge(TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w700)),
                            )
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            Text(
                              "10",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .merge(
                                      TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Text(
                              "  days",
                              style: Theme.of(context).textTheme.bodyText2,
                            )
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            Icon(
                              Icons.pause,
                              color: primaryColor,
                              size: 14,
                            ),
                            Text(
                              " Paused",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .merge(TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w700)),
                            )
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            Text(
                              "2",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .merge(
                                      TextStyle(fontWeight: FontWeight.w700)),
                            ),
                            Text(
                              "  days",
                              style: Theme.of(context).textTheme.bodyText2,
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 56, 32, 0),
            child: FillButton(
              onPressed: () {},
              text: "Renew Package",
              fillColor: gray800,
              radius: 32,
            ),
          )
        ],
      ),
    );
  }
}

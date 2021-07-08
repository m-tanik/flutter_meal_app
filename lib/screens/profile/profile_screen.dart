import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/screens/profile/components/background.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 37, 0, 0),
              child: Center(
                  child: Column(
                children: [
                  // Image.asset('assets/images/avater.png'),
                  CircleAvatar(
                    radius: MediaQuery.of(context).size.width * .2,
                    backgroundImage: CachedNetworkImageProvider(
                        'https://images.unsplash.com/photo-1572374096159-87994f628560?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                    child: Text(
                      "John Watson",
                      style: Theme.of(context).textTheme.headline4.merge(
                          TextStyle(
                              fontWeight: FontWeight.w700,
                              color: primaryColor)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "11321654865",
                    style: Theme.of(context).textTheme.bodyText1,
                  )
                ],
              )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 12,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          color: primarySoftColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(45),
                              bottomRight: Radius.circular(45))),
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: primaryColor,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                child: Text(
                                  "Bodybuilding",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      .merge(TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: gray50)),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "26 days",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .merge(TextStyle(color: gray200)),
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Expanded(
                    flex: 7,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(28, 0, 0, 0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.3,
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
                                      .merge(TextStyle(
                                          fontWeight: FontWeight.w700)),
                                ),
                                Text(
                                  "  days",
                                  style: Theme.of(context).textTheme.bodyText2,
                                )
                              ],
                            )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.08,
                            ),
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
                                      .merge(TextStyle(
                                          fontWeight: FontWeight.w700)),
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 0.001,
                    decoration: BoxDecoration(
                      color: primarySoftColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
              child: FillButton(
                onPressed: () {},
                text: "Renew Package",
                fillColor: gray800,
                radius: 32,
              ),
            )
          ],
        ),
      ),
    );
  }
}

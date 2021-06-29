import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/welcome_message/welcome_message_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(34, 56, 34, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome",
                style: Theme.of(context)
                    .textTheme
                    .headline1
                    .merge(TextStyle(fontWeight: FontWeight.w700)),
              ),
              // TODO: change this with user name
              Text(
                "John watson",
                style: Theme.of(context).textTheme.headline4,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 139, 0, 0),
                // TODO: implement next button functionality
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 36,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return WelcomeMessage();
                    }));
                  },
                ),
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import '../pages/pages.dart';
import 'package:scale_kuwait_mobile_app/screens/background_svg.dart';

class ConfirmMessage extends StatelessWidget {
  const ConfirmMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            width: double.infinity,
            child: Column(
              children: [
                Icon(
                  Icons.check,
                  size: 70,
                  color: primaryColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Purchase Completed',
                  style: Theme.of(context).textTheme.headline4.merge(
                        TextStyle(
                          fontWeight: FontWeight.w400,
                          color: gray200,
                        ),
                      ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Successfully',
                  style: Theme.of(context).textTheme.headline2.merge(
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          color: gray50,
                        ),
                      ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            height: MediaQuery.of(context).size.height / 3,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Pages(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Start Ordering',
                    style: Theme.of(context).textTheme.headline5.merge(
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            color: gray50,
                          ),
                        ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: gray50,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

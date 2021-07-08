import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/background_svg.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import '../setting/setting_page_main.dart';
import '../pages/pages.dart';

class ChangePassword5 extends StatelessWidget {
  const ChangePassword5({Key key}) : super(key: key);

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
                  'Password Changed',
                  style: Theme.of(context).textTheme.headline4.merge(
                        TextStyle(fontWeight: FontWeight.w400, color: gray200),
                      ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Successfully',
                  style: Theme.of(context).textTheme.headline2.merge(
                        TextStyle(fontWeight: FontWeight.w700, color: gray50),
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
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

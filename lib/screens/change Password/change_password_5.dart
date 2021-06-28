import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import '../setting/setting_page_main.dart';

class ChangePassword5 extends StatelessWidget {
  const ChangePassword5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
                style: TextStyle(fontSize: 18, color: gray50),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Successfully',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                  builder: (context) => SettingPageMain(),
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
    ));
  }
}

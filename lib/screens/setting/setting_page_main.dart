import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/change%20Password/change_password_1.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import '../Default Carb Level/default_carb_level.dart';
import '../Edit profile/edit_profile_1.dart';
import '../change language/change_language.dart';
import '../logout/logout_page.dart';

class SettingPageMain extends StatefulWidget {
  const SettingPageMain({Key key}) : super(key: key);

  @override
  _SettingPageMainState createState() => _SettingPageMainState();
}

class _SettingPageMainState extends State<SettingPageMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            SettingCards(
              cardTitle: 'Default Carb Level',
              iconValue: Icons.fastfood_sharp,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DefaultCarbLevel(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            SettingCards(
              cardTitle: 'Edit profile',
              iconValue: Icons.account_circle_outlined,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfile(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            SettingCards(
              cardTitle: 'Change language',
              iconValue: Icons.chat_bubble,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeLanguage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            SettingCards(
              cardTitle: 'Change Password',
              iconValue: Icons.vpn_key,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangePassword(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
            SettingCards(
              cardTitle: 'Log out',
              iconValue: Icons.logout,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LogoutPage(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class SettingCards extends StatelessWidget {
  final IconData iconValue;
  final String cardTitle;
  final Function onTap;
  SettingCards({this.iconValue, this.cardTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        // focusColor: Colors.green,
        // hoverColor: primaryColor,
        horizontalTitleGap: 10,
        leading: CircleAvatar(
          backgroundColor: primaryColor,
          child: Icon(iconValue),
          radius: 35,
        ),
        title: Text(
          cardTitle,
          style: heading5Style,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: gray50,
        ),
        onTap: onTap,
      ),
    );
  }
}

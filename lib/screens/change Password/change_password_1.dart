import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'change_password_2.dart';
import 'package:scale_kuwait_mobile_app/components/custom_text_field.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: primaryColor,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Change password',
                      style: heading3Style,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Container(
                child: Column(
                  children: [
                    ChangePasswordCard(
                      title: 'CURRENT PASSWORD',
                      hintText: '********',
                      icon: Icons.vpn_key,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ChangePasswordCard(
                      title: 'NEW PASSWORD',
                      icon: Icons.vpn_key,
                      hintText: '********',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    ChangePasswordCard(
                      title: 'CONFIRM NEW PASSWORD',
                      icon: Icons.vpn_key,
                      hintText: '********',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'FORGOT PASSWORD?',
                            style: TextStyle(fontSize: 12, color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 6,
                    ),
                  ],
                ),
              ),
              FillButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChangePassword2(),
                    ),
                  );
                },
                text: 'Update Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChangePasswordCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String hintText;

  ChangePasswordCard({this.title, this.icon, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              '$title',
              style: TextStyle(color: gray50, fontSize: 13),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          CustomTextField(
            icon: Icon(
              icon,
              color: gray50,
            ),
            hintText: '$hintText',
          ),
        ],
      ),
    );
  }
}

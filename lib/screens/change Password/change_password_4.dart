import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'change_password_5.dart';
import 'package:scale_kuwait_mobile_app/components/custom_text_field.dart';

class ChangePassword4 extends StatefulWidget {
  const ChangePassword4({Key key}) : super(key: key);

  @override
  _ChangePassword4State createState() => _ChangePassword4State();
}

class _ChangePassword4State extends State<ChangePassword4> {
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
                      'Reset password',
                      style: heading3Style,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              Container(
                child: Column(
                  children: [
                    ChangePasswordCard(
                      title: 'NEW PASSWORD',
                      icon: Icons.vpn_key,
                      hintText: '********',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    ChangePasswordCard(
                      title: 'CONFIRM NEW PASSWORD',
                      icon: Icons.vpn_key,
                      hintText: '********',
                    ),
                    SizedBox(
                      height: 15,
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
                      builder: (context) => ChangePassword5(),
                    ),
                  );
                },
                text: 'Reset Password',
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

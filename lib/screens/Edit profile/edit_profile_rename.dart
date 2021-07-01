import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/custom_text_field.dart';

class EditProfileName extends StatefulWidget {
  const EditProfileName({Key key}) : super(key: key);

  @override
  _EditProfileNameState createState() => _EditProfileNameState();
}

class _EditProfileNameState extends State<EditProfileName> {
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
                      'Name',
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
                    EditNameCard(
                      title: 'FIRST NAME',
                      icon: Icons.account_circle_outlined,
                      hintText: 'Your first name',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    EditNameCard(
                      title: 'MIDDLE NAME',
                      icon: Icons.account_circle_outlined,
                      hintText: 'Your middle name',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    EditNameCard(
                      title: 'LAST NAME',
                      icon: Icons.account_circle_outlined,
                      hintText: 'Your last name',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 4,
                    ),
                  ],
                ),
              ),
              FillButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: 'Confirm',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditNameCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String hintText;

  EditNameCard({this.title, this.icon, this.hintText});

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
              style: TextStyle(color: primaryColor, fontSize: 13),
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

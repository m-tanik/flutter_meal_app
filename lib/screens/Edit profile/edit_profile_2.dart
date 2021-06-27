import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

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
                      style: heading4Style,
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
                      icon: Icons.face_unlock_sharp,
                      hintText: 'Your first name',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    EditNameCard(
                      title: 'MIDDLE NAME',
                      icon: Icons.face_unlock_sharp,
                      hintText: 'Your middle name',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    EditNameCard(
                      title: 'LAST NAME',
                      icon: Icons.arrow_back,
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
              style: TextStyle(color: primaryColor, fontSize: 12),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            style: TextStyle(color: primaryColor),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                hintText: '$hintText',
                hintStyle: TextStyle(
                  color: gray700,
                ),
                focusColor: gray700,
                filled: true,
                fillColor: gray800),
          ),
        ],
      ),
    );
  }
}

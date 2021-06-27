import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    'Edit profile',
                    style: heading4Style,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            Container(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EditProfileCard(
                    title: 'Name',
                    value: 'John William Watson',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  EditProfileCard(
                    title: 'Email',
                    value: 'johnwilliam@gmail.com',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfileCard extends StatelessWidget {
  final Function onTap;
  final String title;
  final String value;

  EditProfileCard({
    this.onTap,
    this.title,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / .9,
        decoration: BoxDecoration(
          color: gray800,
          borderRadius: BorderRadius.circular(20),
          // border: Border.all(
          //   color: isEnable ? primaryColor : Colors.transparent.withOpacity(0),
          //   width: 1,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title',
                    style: TextStyle(fontSize: 12, color: gray200),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$value',
                    style: heading5Style,
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

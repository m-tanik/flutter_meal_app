import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'edit_profile_rename.dart';
import 'edit_profile_email.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: darkBG,
        iconTheme: IconThemeData(
          color: primaryColor, //change your color here
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Text(
                    'Edit profile',
                    style: Theme.of(context).textTheme.headline3.merge(
                          TextStyle(fontWeight: FontWeight.w700, color: gray50),
                        ),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfileName(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  EditProfileCard(
                    title: 'Email',
                    value: 'johnwilliam@gmail.com',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfileEmail(),
                        ),
                      );
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
                    style: Theme.of(context).textTheme.bodyText1.merge(
                          TextStyle(
                              fontWeight: FontWeight.w400, color: gray200),
                        ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$value',
                    style: Theme.of(context).textTheme.headline5.merge(
                          TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.white),
                        ),
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

import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'change_language_model.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({Key key}) : super(key: key);

  @override
  _ChangeLanguageState createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  List<ChangeLanguageModel> languages = [
    ChangeLanguageModel(title: 'English', isPicked: false),
    ChangeLanguageModel(title: 'Arabic', isPicked: false),
  ];

  bool isPicked = false;

  @override
  void initState() {
    super.initState();
    isPicked = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                    'Change Language',
                    style: heading4Style,
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 10,
            // ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SelectLanguageCard(
                    title: languages[0].title,
                    isEnable: languages[0].isPicked,
                    onTap: () {
                      setState(() {
                        languages[0].isPicked = true;
                        languages[1].isPicked = false;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SelectLanguageCard(
                    title: languages[1].title,
                    isEnable: languages[1].isPicked,
                    onTap: () {
                      setState(() {
                        languages[0].isPicked = false;
                        languages[1].isPicked = true;
                      });
                    },
                  ),
                ],
              ),
            ),
            FillButton(
              onPressed: () {
                Navigator.pop(context);
              },
              text: 'Confirm',
            )
          ],
        ),
      ),
    );
  }
}

class SelectLanguageCard extends StatelessWidget {
  final bool isEnable;
  final String title;
  final Function onTap;

  SelectLanguageCard({
    this.isEnable,
    this.title,
    this.onTap,
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
          border: Border.all(
            color: isEnable ? primaryColor : Colors.transparent.withOpacity(0),
            width: 1,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$title',
                style: TextStyle(
                  fontSize: 20,
                  color: isEnable ? primaryColor : Colors.white,
                ),
              ),
              SizedBox(
                width: 30,
              ),
              // Icon(
              //   Icons.check,
              //   color:
              //       isEnable ? primaryColor : Colors.transparent.withOpacity(0),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

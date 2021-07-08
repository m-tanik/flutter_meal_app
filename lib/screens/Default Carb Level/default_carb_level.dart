import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'carb_model.dart';

class DefaultCarbLevel extends StatefulWidget {
  const DefaultCarbLevel({Key key}) : super(key: key);

  @override
  _DefaultCarbLevelState createState() => _DefaultCarbLevelState();
}

class _DefaultCarbLevelState extends State<DefaultCarbLevel> {
  bool isPicked;

  @override
  void initState() {
    super.initState();
    isPicked = false;
  }

  List<CarbModel> carbList = [
    CarbModel(carbAmount: 0, isPicked: false),
    CarbModel(carbAmount: 50, isPicked: false),
    CarbModel(carbAmount: 100, isPicked: false),
    CarbModel(carbAmount: 200, isPicked: false)
  ];

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // IconButton(
                  //   icon: Icon(
                  //     Icons.arrow_back,
                  //     color: primaryColor,
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pop(context);
                  //   },
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  Text(
                    'Default carb level',
                    style: Theme.of(context).textTheme.headline3.merge(
                          TextStyle(fontWeight: FontWeight.w700, color: gray50),
                        ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  CarbLevelCard(
                    carbValue: carbList[0].carbAmount,
                    isEnable: carbList[0].isPicked,
                    onTap: () {
                      setState(() {
                        carbList[0].isPicked = true;
                        carbList[1].isPicked = false;
                        carbList[2].isPicked = false;
                        carbList[3].isPicked = false;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CarbLevelCard(
                    carbValue: carbList[1].carbAmount,
                    isEnable: carbList[1].isPicked,
                    onTap: () {
                      setState(() {
                        carbList[0].isPicked = false;
                        carbList[1].isPicked = true;
                        carbList[2].isPicked = false;
                        carbList[3].isPicked = false;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CarbLevelCard(
                    carbValue: carbList[2].carbAmount,
                    isEnable: carbList[2].isPicked,
                    onTap: () {
                      setState(() {
                        carbList[0].isPicked = false;
                        carbList[1].isPicked = false;
                        carbList[2].isPicked = true;
                        carbList[3].isPicked = false;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  CarbLevelCard(
                    carbValue: carbList[3].carbAmount,
                    isEnable: carbList[3].isPicked,
                    onTap: () {
                      setState(() {
                        carbList[0].isPicked = false;
                        carbList[1].isPicked = false;
                        carbList[2].isPicked = false;
                        carbList[3].isPicked = true;
                      });
                    },
                  ),
                  SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            Container(
              child: FillButton(
                text: 'Confirm',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                textColor: gray50,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarbLevelCard extends StatelessWidget {
  final bool isEnable;
  final int carbValue;
  final Function onTap;

  CarbLevelCard({
    this.isEnable,
    this.carbValue,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$carbValue',
                // style: TextStyle(
                //   fontSize: 20,
                //   color: isEnable ? primaryColor : Colors.white,
                // ),
                style: Theme.of(context).textTheme.headline5.merge(
                      TextStyle(
                        fontWeight: FontWeight.w700,
                        color: isEnable ? primaryColor : Colors.white,
                      ),
                    ),
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.check,
                color:
                    isEnable ? primaryColor : Colors.transparent.withOpacity(0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

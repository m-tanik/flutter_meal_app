import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'confirmation_message.dart';
import 'package:scale_kuwait_mobile_app/screens/background_svg.dart';
import 'package:scale_kuwait_mobile_app/components/custom_text_field.dart';

class BillingDetails2 extends StatefulWidget {
  final String packageName;
  final String proAmount;
  final int mealNumber;
  final int snackNumber;
  final int daysLeft;

  BillingDetails2(
      {this.packageName,
      this.proAmount,
      this.mealNumber,
      this.snackNumber,
      this.daysLeft});

  @override
  _BillingDetails2State createState() => _BillingDetails2State();
}

class _BillingDetails2State extends State<BillingDetails2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
        elevation: 0,
        backgroundColor: darkBG,
      ),
      body: Background(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Billing Details',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 5,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.packageName}- ${widget.proAmount}g protein',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${widget.mealNumber} Meals + ${widget.snackNumber} Snacks',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${widget.daysLeft} Days',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 5,
                                  ),
                                  BillingTextField(
                                    title: 'ENTER CODE',
                                    hintText: 'Your Code',
                                    icon: Icons.vpn_key,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                FillButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmMessage(),
                      ),
                    );
                  },
                  text: 'Confirm',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BillingTextField extends StatelessWidget {
  final String title;
  final IconData icon;
  final String hintText;

  BillingTextField({this.title, this.icon, this.hintText});

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
              style: TextStyle(color: gray50, fontSize: 15),
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

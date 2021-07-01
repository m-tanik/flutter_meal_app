import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/screens/billing_details/billing_details_2.dart';
import 'package:scale_kuwait_mobile_app/screens/background_svg.dart';
import 'package:scale_kuwait_mobile_app/components/custom_text_field.dart';

class BillingDetails extends StatefulWidget {
  final String packageName;
  final String proAmount;
  final int mealNumber;
  final int snackNumber;
  final int daysLeft;

  BillingDetails({
    this.packageName,
    this.proAmount,
    this.mealNumber,
    this.snackNumber,
    this.daysLeft,
  });
  @override
  _BillingDetailsState createState() => _BillingDetailsState();
}

class _BillingDetailsState extends State<BillingDetails> {
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
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
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
                                  color: primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  BillingTextField(
                    title: 'AREA',
                    hintText: 'Your Area',
                    icon: Icons.location_on,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BillingTextField(
                    title: 'HOUSE',
                    hintText: 'House No.',
                    icon: Icons.house,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BillingTextField(
                    title: 'BLOCK',
                    hintText: 'Your Block No.',
                    icon: Icons.home_work_rounded,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BillingTextField(
                    title: 'STREET',
                    hintText: 'Your Street Name',
                    icon: Icons.add_road,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BillingTextField(
                    title: 'FLOOR',
                    hintText: 'Floor No.',
                    icon: Icons.line_weight_rounded,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BillingTextField(
                    title: 'PHONE NUMBER',
                    hintText: 'Your Phone Number',
                    icon: Icons.phone,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BillingTextField(
                    title: 'OTHER DIRECTIONS',
                    hintText: 'Other details information',
                    icon: Icons.directions,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BillingDetails2(
                            packageName: widget.packageName,
                            proAmount: widget.proAmount,
                            mealNumber: widget.mealNumber,
                            snackNumber: widget.snackNumber,
                            daysLeft: widget.daysLeft,
                          ),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 50.0,
                      color: gray50,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
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
              style: TextStyle(color: primaryColor, fontSize: 15),
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

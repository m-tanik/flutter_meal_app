import 'package:flutter/cupertino.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backwardsCompatibility: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Background(
        child: Padding(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: MediaQuery.of(context).size.height * .1,
            bottom: 15,
          ),
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
                          style: Theme.of(context).textTheme.headline3.merge(
                                TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: gray50,
                                ),
                              ),
                        ),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                '1',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primaryColor.withOpacity(0.4),
                              ),
                              padding: EdgeInsets.all(8),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor),
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
                    maxlines: 3,
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
                      size: 35.0,
                      color: Colors.white,
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
  final int maxlines;

  BillingTextField({this.title, this.icon, this.hintText, this.maxlines});

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
              style: Theme.of(context).textTheme.bodyText2.merge(
                    TextStyle(
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
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
            maxlines: maxlines,
          ),
        ],
      ),
    );
  }
}

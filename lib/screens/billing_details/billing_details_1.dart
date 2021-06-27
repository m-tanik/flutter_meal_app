import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/screens/billing_details/billing_details_2.dart';

class BillingDetails extends StatefulWidget {
  const BillingDetails({Key key}) : super(key: key);

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
      body: Padding(
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
                ),
                SizedBox(
                  height: 10,
                ),
                BillingTextField(
                  title: 'HOUSE',
                  hintText: 'House No.',
                ),
                SizedBox(
                  height: 10,
                ),
                BillingTextField(
                  title: 'BLOCK',
                  hintText: 'Your Block No.',
                ),
                SizedBox(
                  height: 10,
                ),
                BillingTextField(
                  title: 'STREET',
                  hintText: 'Your Street Name',
                ),
                SizedBox(
                  height: 10,
                ),
                BillingTextField(
                  title: 'FLOOR',
                  hintText: 'Floor No.',
                ),
                SizedBox(
                  height: 10,
                ),
                BillingTextField(
                  title: 'PHONE NUMBER',
                  hintText: 'Your Phone Number',
                ),
                SizedBox(
                  height: 10,
                ),
                BillingTextField(
                  title: 'OTHER DIRECTIONS',
                  hintText: 'Other details information',
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BillingDetails2(),
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
          TextField(
            style: TextStyle(color: primaryColor),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                hintText: '$hintText',
                hintStyle: TextStyle(color: gray200),
                focusColor: gray700,
                filled: true,
                fillColor: gray800),
          ),
        ],
      ),
    );
  }
}

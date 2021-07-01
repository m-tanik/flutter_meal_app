import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/screens/billing_details/billing_details_1.dart';
import 'package:scale_kuwait_mobile_app/screens/background_svg.dart';

class CheckoutPage extends StatelessWidget {
  final int mealNumber;
  final int snackNumber;
  final int days;
  final int totalKD;
  final String packageName;
  final String proNumber;

  CheckoutPage(
      {this.mealNumber,
      this.snackNumber,
      this.days,
      this.totalKD,
      this.packageName,
      this.proNumber});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${packageName} - ${proNumber}g protein',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$mealNumber Meals + $snackNumber Snacks',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$days Days',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '$totalKD Kd',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor),
                              ),
                            ],
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
                      builder: (context) => BillingDetails(
                        mealNumber: mealNumber,
                        snackNumber: snackNumber,
                        packageName: packageName,
                        proAmount: proNumber,
                        daysLeft: days,
                      ),
                    ),
                  );
                },
                text: 'Proceed to Billing',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
                        style: Theme.of(context).textTheme.headline3.merge(
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                color: gray50,
                              ),
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
                            style: Theme.of(context).textTheme.headline5.merge(
                                  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: gray200,
                                  ),
                                ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$mealNumber Meals + $snackNumber Snacks',
                            style: Theme.of(context).textTheme.headline5.merge(
                                  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: gray200,
                                  ),
                                ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '$days Days',
                            style: Theme.of(context).textTheme.headline5.merge(
                                  TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: gray200,
                                  ),
                                ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style:
                                    Theme.of(context).textTheme.headline3.merge(
                                          TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: gray50,
                                          ),
                                        ),
                              ),
                              Text(
                                '$totalKD Kd',
                                style:
                                    Theme.of(context).textTheme.headline3.merge(
                                          TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor,
                                          ),
                                        ),
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
                textColor: gray50,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

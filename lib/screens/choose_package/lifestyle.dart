import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/screens/checkout/checkout_page.dart';

class LifeStyle extends StatelessWidget {
  const LifeStyle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
        elevation: 0,
        backgroundColor: darkBG,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.lunch_dining,
                    color: primaryColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'LifeStyle ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '100g Protein',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  'With Lifestyle meal plan you will get 100g of Protein for each meal and your choice of carbohydrates portions. Lose weight, eat healthy, and live longer.',
                  style: TextStyle(fontSize: 15.0, color: gray200),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              LifeStyleCard(
                mealNumber: 2,
                snackNumber: 2,
                daysLeft: 12,
                kdLeft: 75,
                kdRight: 75,
                daysRight: 24,
                offPercentage: 10,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutPage(
                        mealNumber: 2,
                        snackNumber: 2,
                        days: 12,
                        totalKD: 75,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
              LifeStyleCard(
                mealNumber: 3,
                snackNumber: 2,
                daysLeft: 12,
                kdLeft: 85,
                kdRight: 165,
                daysRight: 24,
                offPercentage: 10,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutPage(
                        mealNumber: 3,
                        snackNumber: 2,
                        days: 12,
                        totalKD: 165,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 15,
              ),
              LifeStyleCard(
                mealNumber: 4,
                snackNumber: 2,
                daysLeft: 12,
                kdLeft: 100,
                kdRight: 205,
                daysRight: 24,
                offPercentage: 10,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutPage(
                        mealNumber: 4,
                        snackNumber: 2,
                        days: 12,
                        totalKD: 205,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LifeStyleCard extends StatelessWidget {
  final int mealNumber;
  final int snackNumber;
  final int daysLeft;
  final int daysRight;
  final int kdLeft;
  final int kdRight;
  final int offPercentage;
  final Function onPressed;

  LifeStyleCard(
      {this.mealNumber,
      this.snackNumber,
      this.daysLeft,
      this.daysRight,
      this.kdLeft,
      this.kdRight,
      this.offPercentage,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: gray800,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '$mealNumber Meals',
                      style: TextStyle(color: primaryColor, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      ' + $snackNumber Snacks',
                      style: TextStyle(color: gray50, fontSize: 10),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: GestureDetector(
                      onTap: onPressed,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: gray700,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('$daysLeft Days'),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '$kdLeft KD',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: onPressed,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: gray700,
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('$daysRight Days'),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '$offPercentage' + '% off',
                                  style: TextStyle(color: primaryColor),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '$kdRight KD',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

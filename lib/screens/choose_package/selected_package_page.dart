import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/screens/checkout/checkout_page.dart';
import 'package:scale_kuwait_mobile_app/screens/background_svg.dart';
import 'selected_package_model.dart';

class SelectedPackage extends StatelessWidget {
  final String packageName;
  final String proAmount;
  final IconData packageIcon;

  SelectedPackage({
    this.packageName,
    this.proAmount,
    this.packageIcon,
  });

  List<SelectedPackageModel> packageCards = [
    SelectedPackageModel(
      mealNumber: 2,
      snackNumber: 2,
      daysOnLeftCard: 12,
      daysOnRightCard: 24,
      offPercentage: 10,
      kdLeft: 75,
      kdRight: 75,
    ),
    SelectedPackageModel(
      mealNumber: 3,
      snackNumber: 2,
      daysOnLeftCard: 12,
      daysOnRightCard: 24,
      offPercentage: 10,
      kdLeft: 85,
      kdRight: 165,
    ),
    SelectedPackageModel(
      mealNumber: 4,
      snackNumber: 2,
      daysOnLeftCard: 12,
      daysOnRightCard: 24,
      offPercentage: 10,
      kdLeft: 100,
      kdRight: 205,
    ),
  ];

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
        child: Container(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
            top: MediaQuery.of(context).size.height * .1,
            bottom: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    packageIcon,
                    color: primaryColor,
                    size: 31,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    packageName,
                    style: Theme.of(context).textTheme.headline2.merge(
                          TextStyle(
                            fontWeight: FontWeight.bold,
                            color: gray50,
                          ),
                        ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${proAmount}g Protein',
                    style: Theme.of(context).textTheme.headline5.merge(
                          TextStyle(
                            fontWeight: FontWeight.w400,
                            color: gray200,
                          ),
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  'With ${packageName} meal plan you will get ${proAmount}g of Protein for each meal and your choice of carbohydrates portions. Lose weight, eat healthy, and live longer.',
                  style: Theme.of(context).textTheme.bodyText1.merge(
                        TextStyle(
                          fontWeight: FontWeight.w400,
                          color: gray300,
                        ),
                      ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: packageCards.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        LifeStyleCard(
                          mealNumber: packageCards[index].mealNumber,
                          snackNumber: packageCards[index].snackNumber,
                          daysLeft: packageCards[index].daysOnLeftCard,
                          kdLeft: packageCards[index].kdLeft,
                          kdRight: packageCards[index].kdRight,
                          daysRight: packageCards[index].daysOnRightCard,
                          offPercentage: packageCards[index].offPercentage,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CheckoutPage(
                                  mealNumber: packageCards[index].mealNumber,
                                  snackNumber: packageCards[index].snackNumber,
                                  days: packageCards[index].daysOnLeftCard,
                                  totalKD: packageCards[index].kdRight,
                                  packageName: packageName,
                                  proNumber: proAmount,
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                ),
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
          borderRadius: BorderRadius.circular(25),
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
                      style: Theme.of(context).textTheme.headline5.merge(
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      ' + $snackNumber Snacks',
                      style: Theme.of(context).textTheme.bodyText2.merge(
                            TextStyle(
                              fontWeight: FontWeight.w400,
                              color: gray300,
                            ),
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .35,
                    child: GestureDetector(
                      onTap: onPressed,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: gray700,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$daysLeft Days',
                                style:
                                    Theme.of(context).textTheme.bodyText2.merge(
                                          TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: gray300,
                                          ),
                                        ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '$kdLeft KD',
                                style:
                                    Theme.of(context).textTheme.headline3.merge(
                                          TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: gray50,
                                          ),
                                        ),
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
                  Container(
                    width: MediaQuery.of(context).size.width * .35,
                    child: GestureDetector(
                      onTap: onPressed,
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: gray700,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '$daysRight Days',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .merge(
                                          TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: gray300,
                                          ),
                                        ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '$offPercentage' + '% off',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .merge(
                                          TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: primaryColor,
                                          ),
                                        ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '$kdRight KD',
                                style:
                                    Theme.of(context).textTheme.headline3.merge(
                                          TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: gray50,
                                          ),
                                        ),
                              ),
                            ],
                          ),
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

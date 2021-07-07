import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'selected_package_page.dart';
import 'choose_package_model.dart';

class ChoosePackage extends StatefulWidget {
  const ChoosePackage({Key key}) : super(key: key);

  @override
  _ChoosePackageState createState() => _ChoosePackageState();
}

class _ChoosePackageState extends State<ChoosePackage> {
  List<SelectPackage> packages = [
    SelectPackage(
      packageName: 'LifeStyle',
      proAmount: '100',
      packageIcon: Icons.lunch_dining,
      subtitle: 'Losing Weight',
    ),
    SelectPackage(
      packageName: 'Scale',
      proAmount: '150',
      packageIcon: Icons.accessibility_outlined,
      subtitle: 'Athletics',
    ),
    SelectPackage(
      packageName: 'Bodybuilding',
      proAmount: '200',
      packageIcon: Icons.airline_seat_flat_angled,
      subtitle: 'Bodybuilders',
    ),
    SelectPackage(
      packageName: 'LifeStyle',
      proAmount: '100',
      packageIcon: Icons.lunch_dining,
      subtitle: 'Losing Weight',
    ),
    SelectPackage(
      packageName: 'Scale',
      proAmount: '150',
      packageIcon: Icons.accessibility_outlined,
      subtitle: 'Athletics',
    ),
    SelectPackage(
      packageName: 'Bodybuilding',
      proAmount: '200',
      packageIcon: Icons.airline_seat_flat_angled,
      subtitle: 'Bodybuilders',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
        backgroundColor: darkBG,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose a package',
              style: Theme.of(context).textTheme.headline3.merge(
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      color: gray50,
                    ),
                  ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: packages.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      PackageCard(
                        cardName: packages[index].packageName,
                        amount: packages[index].proAmount,
                        icon: packages[index].packageIcon,
                        subtitle: packages[index].subtitle,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedPackage(
                                packageName: packages[index].packageName,
                                proAmount: packages[index].proAmount,
                                packageIcon: packages[index].packageIcon,
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PackageCard extends StatelessWidget {
  final String cardName;
  final String amount;
  final String subtitle;
  final IconData icon;
  final Function onTap;

  PackageCard({
    this.cardName,
    this.amount,
    this.icon,
    this.onTap,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: primaryColor.withOpacity(0.8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      cardName,
                      style: Theme.of(context).textTheme.headline4.merge(
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              color: gray50,
                            ),
                          ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.bodyText2.merge(
                            TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFFED47E),
                            ),
                          ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$amount' + 'g Protein',
                      style: Theme.of(context).textTheme.bodyText2.merge(
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              color: gray50,
                            ),
                          ),
                    ),
                  ],
                ),
                Icon(
                  icon,
                  size: 100,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

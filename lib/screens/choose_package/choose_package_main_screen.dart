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
    ),
    SelectPackage(
      packageName: 'Scale',
      proAmount: '150',
      packageIcon: Icons.accessibility_outlined,
    ),
    SelectPackage(
      packageName: 'Bodybuilding',
      proAmount: '200',
      packageIcon: Icons.airline_seat_flat_angled,
    ),
    SelectPackage(
      packageName: 'LifeStyle',
      proAmount: '100',
      packageIcon: Icons.lunch_dining,
    ),
    SelectPackage(
      packageName: 'Scale',
      proAmount: '150',
      packageIcon: Icons.accessibility_outlined,
    ),
    SelectPackage(
      packageName: 'Bodybuilding',
      proAmount: '200',
      packageIcon: Icons.airline_seat_flat_angled,
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
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose a package',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => LifeStyle(),
            //       ),
            //     );
            //   },
            //   child: PackageCard(
            //     cardName: 'LifeStyle',
            //     amount: 100,
            //     icon: Icons.lunch_dining,
            //   ),
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => LifeStyle(),
            //       ),
            //     );
            //   },
            //   child: PackageCard(
            //     cardName: 'Scale',
            //     amount: 150,
            //     icon: Icons.accessibility_outlined,
            //   ),
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => LifeStyle(),
            //       ),
            //     );
            //   },
            Expanded(
              child: ListView.builder(
                itemCount: packages.length,
                itemBuilder: (context, index) {
                  return PackageCard(
                    cardName: packages[index].packageName,
                    amount: packages[index].proAmount,
                    icon: packages[index].packageIcon,
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
  final IconData icon;
  final Function onTap;

  PackageCard({this.cardName, this.amount, this.icon, this.onTap});

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
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$amount' + 'g Protein',
                      style: TextStyle(
                        fontSize: 15,
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

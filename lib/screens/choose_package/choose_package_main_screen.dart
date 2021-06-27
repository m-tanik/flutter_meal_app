import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'lifestyle.dart';

class ChoosePackage extends StatefulWidget {
  const ChoosePackage({Key key}) : super(key: key);

  @override
  _ChoosePackageState createState() => _ChoosePackageState();
}

class _ChoosePackageState extends State<ChoosePackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
        backgroundColor: darkBG,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LifeStyle(),
                        ),
                      );
                    },
                    child: PackageCard(
                      cardName: 'LifeStyle',
                      amount: 100,
                      icon: Icons.lunch_dining,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LifeStyle(),
                        ),
                      );
                    },
                    child: PackageCard(
                      cardName: 'Scale',
                      amount: 150,
                      icon: Icons.accessibility_outlined,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LifeStyle(),
                        ),
                      );
                    },
                    child: PackageCard(
                      cardName: 'Bodybuilding',
                      amount: 200,
                      icon: Icons.airline_seat_flat_angled,
                    ),
                  ),
                ],
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
  final int amount;
  final IconData icon;

  PackageCard({this.cardName, this.amount, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}

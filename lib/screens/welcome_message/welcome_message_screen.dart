import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import '../choose_package/choose_package_main_screen.dart';
import '../pages/pages.dart';
import 'package:scale_kuwait_mobile_app/screens/background_svg.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.fromLTRB(23, 30, 23, 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'All of our foods are just ',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Couple of Taps Away',
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                      ],
                    ),
                    Text(
                      'Buy one of our packages to start ordering food',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 13,
                    ),
                    FillButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Pages(),
                          ),
                        );
                      },
                      text: 'Purchase a Package',
                      textColor: Colors.white,
                      radius: 30,
                      fontSize: 13,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 150);
    var controllPoint = Offset(100, size.height);
    var endPoint = Offset(size.width / 0.8, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}

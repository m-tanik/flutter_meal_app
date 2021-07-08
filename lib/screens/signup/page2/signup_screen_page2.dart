import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:scale_kuwait_mobile_app/theme_data.dart';

import 'components/body.dart';

class SignupScreenPage2 extends StatelessWidget {
  const SignupScreenPage2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: primaryColor, //change your color here
        ),
      ),
      body: Body(),
    );
  }
}

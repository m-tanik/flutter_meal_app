import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/welcome/welcome_select_language/components/body.dart';

class WelcomeSelectLanguageScreen extends StatelessWidget {
  final void Function(String) onLaguageChange;

  const WelcomeSelectLanguageScreen({Key key, this.onLaguageChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(onLanguageChange: onLaguageChange),
    );
  }
}

import 'package:flutter/material.dart';

class OnboardingItem {
  final String title;
  final String subtitle;
  final String image;

  const OnboardingItem({this.title, this.subtitle, this.image});
}

class OnboardingItems {
  static List<OnboardingItem> loadOnboardingItem() {
    const fi = <OnboardingItem>[
      OnboardingItem(
          title: "You choose",
          subtitle: "Your meal plan",
          image: "assets/images/choose.svg"),
      OnboardingItem(
          title: "We cook",
          subtitle: "For you",
          image: "assets/images/cook.svg"),
      OnboardingItem(
          title: "We deliver",
          subtitle: "To your doorstep",
          image: "assets/images/deliver.svg"),
      OnboardingItem(
          title: "You enjoy",
          subtitle: "Food measured to\nPerfection",
          image: "assets/images/enjoy.svg"),
    ];
    return fi;
  }
}

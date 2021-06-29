import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/profile/profile_screen.dart';
import '../choose_package/choose_package_main_screen.dart';
import '../all_items/all_items.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import '../profile/profile_page.dart';
import '../setting/setting_page_main.dart';

class Pages extends StatefulWidget {
  const Pages({Key key}) : super(key: key);

  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.jumpToPage(
      pageIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          AllItems(),
          ChoosePackage(),
          ProfileScreen(),
          SettingPageMain(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: pageIndex,
        onTap: onTap,
        activeColor: primaryColor,
        backgroundColor: darkBG,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dinner_dining),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}

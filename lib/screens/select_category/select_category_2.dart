import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'dart:ui';

class SelectCategory2 extends StatefulWidget {
  const SelectCategory2({Key key}) : super(key: key);

  @override
  _SelectCategory2State createState() => _SelectCategory2State();
}

class _SelectCategory2State extends State<SelectCategory2> {
  bool breakFast = false;
  bool lunch = false;
  bool snacks = false;
  String selectedCategory = 'All';
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: AlertDialog(
        backgroundColor: Colors.transparent.withOpacity(0),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select a Category',
              style: Theme.of(context).textTheme.headline5.merge(
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      color: gray300,
                    ),
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: gray700,
                  borderRadius: BorderRadius.circular(18),
                ),
                // height: MediaQuery.of(context).size.height / 2.3,
                width: MediaQuery.of(context).size.width / 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, right: 10, bottom: 10, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      CategoryItemButton(
                        onTap: () {
                          setState(() {
                            lunch = true;
                            breakFast = true;
                            snacks = true;
                            selectedCategory = 'All';
                          });
                          Navigator.pop(context, selectedCategory);
                        },
                        icon: Icons.grid_view,
                        title: 'All',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: gray200,
                      ),
                      CategoryItemButton(
                        onTap: () {
                          setState(() {
                            lunch = false;
                            breakFast = true;
                            snacks = false;
                            selectedCategory = 'Breakfast';
                          });
                          Navigator.pop(context, selectedCategory);
                        },
                        icon: Icons.grain,
                        title: 'Breakfast',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: gray200,
                      ),
                      CategoryItemButton(
                        onTap: () {
                          setState(() {
                            lunch = true;
                            breakFast = false;
                            snacks = false;
                            selectedCategory = 'Lunch';
                          });
                          Navigator.pop(context, selectedCategory);
                        },
                        icon: Icons.volunteer_activism,
                        title: 'Lunch',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: gray200,
                      ),
                      CategoryItemButton(
                        onTap: () {
                          setState(() {
                            lunch = false;
                            breakFast = false;
                            snacks = true;
                            selectedCategory = 'Snacks';
                          });
                          Navigator.pop(context, selectedCategory);
                        },
                        icon: Icons.lunch_dining,
                        title: 'Snacks',
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItemButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String title;

  CategoryItemButton({
    this.onTap,
    this.icon,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 20,
              color: gray200,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5.merge(
                    TextStyle(
                      fontWeight: FontWeight.w400,
                      color: gray300,
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

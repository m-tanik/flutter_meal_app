import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key key}) : super(key: key);

  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  bool breakFast = false;
  bool lunch = false;
  bool snacks = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select a Category',
              style: heading5Style,
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
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            lunch = true;
                            breakFast = true;
                            snacks = true;
                          });
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.grid_view,
                              size: 20,
                              color: gray200,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'All',
                              style: heading5Style,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: gray200,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            lunch = false;
                            breakFast = true;
                            snacks = false;
                          });
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.grain,
                              size: 20,
                              color: gray200,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Breakfast',
                              style: heading5Style,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: gray200,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            lunch = true;
                            breakFast = false;
                            snacks = false;
                          });
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.volunteer_activism,
                              size: 20,
                              color: gray200,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Lunch',
                              style: heading5Style,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 1,
                        color: gray200,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            lunch = false;
                            breakFast = false;
                            snacks = true;
                          });
                          Navigator.pop(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.lunch_dining,
                              size: 20,
                              color: gray200,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Snacks',
                              style: heading5Style,
                            ),
                          ],
                        ),
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

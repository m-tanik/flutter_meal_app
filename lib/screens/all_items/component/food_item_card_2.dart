// Card for every single food item
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/all_items/component/NutraionFactContainer.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FoodItemCard2 extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final int calAmount;
  final int fatAmount;
  final int carbAmount;
  final int proAmount;
  final Function onTap;
  final bool isPaused;
  final bool userPicked;
  final IconData pickedIcon;
  final bool isLimitCrossed;

  FoodItemCard2({
    this.imageUrl,
    this.itemName,
    this.calAmount,
    this.carbAmount,
    this.fatAmount,
    this.proAmount,
    this.onTap,
    this.isPaused,
    this.userPicked,
    this.pickedIcon,
    this.isLimitCrossed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      //   border: Border.all(
      //     color: userPicked && !isPaused
      //         ? primaryColor
      //         : Colors.transparent.withOpacity(0),
      //     width: 1,
      //   ),
      // ),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          color: isPaused || (!userPicked && isLimitCrossed)
              ? gray700.withOpacity(0.1)
              : gray800,
          elevation: isPaused || (!userPicked && isLimitCrossed) ? 8 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              border: Border.all(
                color: userPicked && !isPaused
                    ? primaryColor
                    : Colors.transparent.withOpacity(0),
                width: 2,
              ),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      // image: AssetImage('$imageUrl'),
                      image: CachedNetworkImageProvider('$imageUrl'),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.055,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8, right: 12, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // width: 50,
                              child: Flexible(
                                child: Text(
                                  '$itemName',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      .merge(
                                        TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: isPaused
                                                ? gray200.withOpacity(0.2)
                                                : gray50),
                                      ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              pickedIcon,
                              size: 18,
                              color: userPicked && !isPaused
                                  ? primaryColor
                                  : Colors.transparent.withOpacity(0),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.011,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Divider(
                              height: 2,
                              color: gray200,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Cal',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: isPaused
                                              ? gray200.withOpacity(0.2)
                                              : Color(0xFFFED47E)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '$calAmount',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: isPaused
                                              ? gray200.withOpacity(0.2)
                                              : gray50),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Fat',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: isPaused
                                              ? gray200.withOpacity(0.2)
                                              : Color(0xFFFED47E)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '$fatAmount',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: isPaused
                                              ? gray200.withOpacity(0.2)
                                              : gray50),
                                    ),
                                  ],
                                ),
                                NutrationFactContainer(
                                  value: 123,
                                  isPaused: isPaused,
                                  nutrationName: "Carb",
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Pro',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: isPaused
                                              ? gray200.withOpacity(0.2)
                                              : Color(0xFFFED47E)),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '$proAmount',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: isPaused
                                              ? gray200.withOpacity(0.2)
                                              : gray50),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

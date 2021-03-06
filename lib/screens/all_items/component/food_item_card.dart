// Card for every single food item
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';

class FoodItemCard extends StatelessWidget {
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

  FoodItemCard({
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: userPicked && !isPaused
              ? primaryColor
              : Colors.transparent.withOpacity(0),
          width: 1,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      // child: BackdropFilter(
      //   filter: (ImageFilter.blur(
      //       sigmaX: isEnable ? 4 : 0,
      //       sigmaY: isEnable ? 4 : 0,
      //       tileMode: TileMode.repeated)),
      child: Card(
        color: isPaused || (!userPicked && isLimitCrossed)
            ? gray700.withOpacity(0.1)
            : gray800,
        elevation: isPaused || (!userPicked && isLimitCrossed) ? 5 : 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 1, top: 8, right: 8, bottom: 8),
          child: ListTile(
            enabled: !isPaused,
            onTap: onTap,
            // leading: CircleAvatar(
            //   backgroundImage: NetworkImage('$imageUrl'),
            //   radius: 30,
            // ),
            leading: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.width / 4.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('$imageUrl'),
                ),
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Container(
                    // width: 50,
                    child: Text(
                      '$itemName',
                      style: TextStyle(
                          fontSize: 18,
                          color: isPaused ? gray200.withOpacity(0.2) : gray50),
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
            subtitle: Column(
              children: [
                SizedBox(
                  height: 12,
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
                                  : Colors.yellow),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '$calAmount',
                          style: TextStyle(
                              fontSize: 10,
                              color:
                                  isPaused ? gray200.withOpacity(0.2) : gray50),
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
                                  : Colors.yellow),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '$fatAmount',
                          style: TextStyle(
                              fontSize: 10,
                              color:
                                  isPaused ? gray200.withOpacity(0.2) : gray50),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Carb',
                          style: TextStyle(
                              fontSize: 10,
                              color: isPaused
                                  ? gray200.withOpacity(0.2)
                                  : Colors.yellow),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '$carbAmount',
                          style: TextStyle(
                              fontSize: 10,
                              color:
                                  isPaused ? gray200.withOpacity(0.2) : gray50),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Pro',
                          style: TextStyle(
                              fontSize: 10,
                              color: isPaused
                                  ? gray200.withOpacity(0.2)
                                  : Colors.yellow),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '$proAmount',
                          style: TextStyle(
                              fontSize: 10,
                              color:
                                  isPaused ? gray200.withOpacity(0.2) : gray50),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // ),
    );
  }
}

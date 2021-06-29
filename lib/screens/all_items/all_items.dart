import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/all_items/component/food_item_card.dart';
import 'package:scale_kuwait_mobile_app/screens/calendar/calendar_gridView.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'item_model.dart';
import 'item_full_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../select_category/select_category.dart';

class AllItems extends StatefulWidget {
  const AllItems({Key key}) : super(key: key);

  @override
  _AllItemsState createState() => _AllItemsState();
}

class _AllItemsState extends State<AllItems> {
  bool isPaused;
  int itemCounter = 0;
  bool userPicked = false;
  int userLimit = 2;

  List<ItemModel> foodItems = [
    ItemModel(
        itemName: 'Burger',
        imgUrl: 'assets/images/burger.jpg',
        calNumber: 206,
        fatNumber: 10,
        carbNumber: 21,
        proNumber: 8,
        userPicked: false,
        pickedIcon: Icons.check_circle,
        id: 1,
        itemInfo:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar integer scelerisque neque viverra elit.'),
    ItemModel(
        itemName: 'Pizza',
        imgUrl: 'assets/images/pizza.jpg',
        calNumber: 286,
        fatNumber: 17,
        carbNumber: 28,
        userPicked: false,
        pickedIcon: Icons.check_circle,
        proNumber: 13,
        id: 2,
        itemInfo:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar integer scelerisque neque viverra elit.'),
    ItemModel(
        itemName: 'Pizza',
        imgUrl: 'assets/images/pizza.jpg',
        calNumber: 286,
        fatNumber: 17,
        carbNumber: 28,
        userPicked: false,
        pickedIcon: Icons.check_circle,
        proNumber: 13,
        id: 2,
        itemInfo:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar integer scelerisque neque viverra elit.'),
    ItemModel(
        itemName: 'Sandwich',
        imgUrl: 'assets/images/sandwich.jpg',
        calNumber: 176,
        fatNumber: 8,
        carbNumber: 19,
        userPicked: false,
        pickedIcon: Icons.check_circle,
        proNumber: 9,
        id: 3,
        itemInfo:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar integer scelerisque neque viverra elit.'),
  ];

  @override
  void initState() {
    super.initState();
    isPaused = false;
    itemCounter = 0;
    userPicked = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this appbar contains buttons that shows date and go to the next date
      // appBar: AppBar(
      //   elevation: 0,
      //   backwardsCompatibility: false,
      //   backgroundColor: darkBG,
      //   title:
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              //this is the top calender container
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios),
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CalenderGridView();
                        }));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: primaryColor,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '12 Aug, 2020',
                            style: Theme.of(context).textTheme.headline5.merge(
                                TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w700)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                      color: primaryColor,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              // this container contains top Row below the app bar
              Container(
                child: Card(
                  color: darkBG,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TopIconButton(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SelectCategory(),
                                ),
                              );
                            },
                            color: gray700,
                            icon: Icons.list_alt_rounded),
                        TopIconButton(
                          onTap: () {
                            setState(() {
                              isPaused = !isPaused;
                              itemCounter = 0;
                              userPicked = false;
                              foodItems
                                  .map((e) => e.userPicked = false)
                                  .toList();

                              // isPaused = !isPaused;
                            });
                          },
                          color: isPaused
                              ? Colors.yellow[200].withOpacity(0.6)
                              : gray800,
                          icon: Icons.pause,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              '$itemCounter / 2',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        !isPaused
                            ? TopIconButton(
                                onTap: isPaused ? () {} : () {},
                                icon: Icons.check,
                                color: itemCounter > 0 ? primaryColor : gray800,
                              )
                            : Container(
                                child: SizedBox(
                                  width: 60,
                                ),
                              ),
                      ],
                    ),
                  ),
                ), //top icon card
              ),
              SizedBox(
                height: 20,
              ),

              //this container shows the category text only
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'All',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              //this is the listview of all cards
              Expanded(
                child: ListView.builder(
                    itemCount: foodItems.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: isPaused ||
                                itemCounter >= userLimit &&
                                    !foodItems[index].userPicked
                            ? Container(
                                child: FoodItemCard(
                                  itemName: foodItems[index].itemName,
                                  imageUrl: foodItems[index].imgUrl,
                                  calAmount: foodItems[index].calNumber,
                                  carbAmount: foodItems[index].carbNumber,
                                  fatAmount: foodItems[index].fatNumber,
                                  proAmount: foodItems[index].proNumber,
                                  isPaused: isPaused,
                                  isLimitCrossed: itemCounter >= userLimit,
                                  userPicked: foodItems[index].userPicked,
                                  pickedIcon: foodItems[index].pickedIcon,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ItemFullPage(
                                          imageUrl: foodItems[index].imgUrl,
                                          itemName: foodItems[index].itemName,
                                          calAmount: foodItems[index].calNumber,
                                          fatAmount: foodItems[index].fatNumber,
                                          carbAmount:
                                              foodItems[index].carbNumber,
                                          proAmount: foodItems[index].proNumber,
                                          itemInfo: foodItems[index].itemInfo,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            : Slidable(
                                actionPane: SlidableDrawerActionPane(),
                                actionExtentRatio: 0.25,
                                secondaryActions: [
                                  IconSlideAction(
                                    caption: foodItems[index].userPicked
                                        ? 'Undo'
                                        : 'Select',
                                    color: darkBG,
                                    icon: Icons.check,
                                    onTap: () {
                                      setState(() {
                                        foodItems[index].userPicked =
                                            !foodItems[index].userPicked;
                                        if (foodItems[index].userPicked ==
                                                false &&
                                            itemCounter > 0) {
                                          itemCounter--;
                                        } else if (foodItems[index]
                                                    .userPicked ==
                                                false &&
                                            itemCounter == 2) {
                                          return;
                                        } else if (foodItems[index]
                                                    .userPicked ==
                                                true &&
                                            itemCounter < 2) {
                                          itemCounter++;
                                        }
                                      });
                                    },
                                  )
                                ],
                                child: Container(
                                  child: FoodItemCard(
                                    itemName: foodItems[index].itemName,
                                    imageUrl: foodItems[index].imgUrl,
                                    calAmount: foodItems[index].calNumber,
                                    carbAmount: foodItems[index].carbNumber,
                                    fatAmount: foodItems[index].fatNumber,
                                    proAmount: foodItems[index].proNumber,
                                    isPaused: isPaused,
                                    isLimitCrossed: itemCounter >= userLimit,
                                    userPicked: foodItems[index].userPicked,
                                    pickedIcon: foodItems[index].pickedIcon,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ItemFullPage(
                                            imageUrl: foodItems[index].imgUrl,
                                            itemName: foodItems[index].itemName,
                                            calAmount:
                                                foodItems[index].calNumber,
                                            fatAmount:
                                                foodItems[index].fatNumber,
                                            carbAmount:
                                                foodItems[index].carbNumber,
                                            proAmount:
                                                foodItems[index].proNumber,
                                            itemInfo: foodItems[index].itemInfo,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                        // ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Top 3 icons in this page
class TopIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final Color color;

  TopIconButton({@required this.onTap, @required this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(18), color: color),
      padding: EdgeInsets.all(6),
      child: IconButton(
        alignment: Alignment.center,
        color: Colors.white,
        iconSize: 24,
        icon: Icon(icon),
        disabledColor: gray200,
        focusColor: primaryColor,
        onPressed: onTap,
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/screens/all_items/component/food_item_card.dart';
import 'package:scale_kuwait_mobile_app/screens/all_items/component/top_icon_button.dart';
import 'package:scale_kuwait_mobile_app/screens/calendar/calendar_gridView.dart';
import 'package:scale_kuwait_mobile_app/screens/select_category/select_category_2.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'component/food_item_card_2.dart';
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

  var listname = 'allItems';

  List<ItemModel> showList = [];

  List<ItemModel> breakfast = [
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

  List<ItemModel> lunch = [
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
  ];

  List<ItemModel> snacks = [
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
  ];

  List<ItemModel> allItems = [
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
    showList = allItems;
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
                        // ''
                        //''
                        // ''
                        // ''
                        //''
                        // ''
                        //1st gen select item category button

                        // TopIconButton(
                        //     onTap: () async {
                        //       String selectedCategory = await Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //           builder: (context) => SelectCategory(),
                        //         ),
                        //       );
                        //       print(selectedCategory);
                        //       setState(() {
                        //         if (selectedCategory == 'All') {
                        //           showList = allItems;
                        //         } else if (selectedCategory == 'Snacks') {
                        //           showList = snacks;
                        //           print(showList);
                        //         }
                        //       });
                        //     },
                        //     color: gray700,
                        //     icon: Icons.list_alt_rounded),

                        // ''
                        //''
                        // ''
                        // ''
                        //''
                        // ''

                        //2nd gen select item category button

                        TopIconButton(
                          onTap: () async {
                            String selectedCategory = await showDialog(
                              context: context,
                              builder: (_) => SelectCategory2(),
                            );
                            setState(() {
                              if (selectedCategory == 'All') {
                                showList = allItems;
                              } else if (selectedCategory == 'Snacks') {
                                showList = snacks;
                                print(showList);
                              } else if (selectedCategory == 'Lunch') {
                                showList = lunch;
                                print(showList);
                              } else if (selectedCategory == 'Breakfast') {
                                showList = breakfast;
                                print(showList);
                              } else {
                                showList = allItems;
                              }
                            });
                          },
                          icon: Icons.list_alt_rounded,
                          color: gray800,
                        ),
                        TopIconButton(
                          onTap: () {
                            setState(() {
                              isPaused = !isPaused;
                              itemCounter = 0;
                              userPicked = false;
                              showList
                                  .map((e) => e.userPicked = false)
                                  .toList();

                              // isPaused = !isPaused;
                            });
                          },
                          color: isPaused
                              ? Colors.yellow[200].withOpacity(0.6)
                              : gray800,
                          icon: Icons.pause,
                          iconColor: Color(0xffFED47E),
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
                    itemCount: showList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: isPaused ||
                                itemCounter >= userLimit &&
                                    !allItems[index].userPicked
                            ? Container(
                                child: FoodItemCard2(
                                  itemName: showList[index].itemName,
                                  imageUrl: showList[index].imgUrl,
                                  calAmount: showList[index].calNumber,
                                  carbAmount: showList[index].carbNumber,
                                  fatAmount: showList[index].fatNumber,
                                  proAmount: showList[index].proNumber,
                                  isPaused: isPaused,
                                  isLimitCrossed: itemCounter >= userLimit,
                                  userPicked: showList[index].userPicked,
                                  pickedIcon: showList[index].pickedIcon,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ItemFullPage(
                                          imageUrl: showList[index].imgUrl,
                                          itemName: showList[index].itemName,
                                          calAmount: showList[index].calNumber,
                                          fatAmount: showList[index].fatNumber,
                                          carbAmount:
                                              showList[index].carbNumber,
                                          proAmount: showList[index].proNumber,
                                          itemInfo: showList[index].itemInfo,
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
                                    caption: showList[index].userPicked
                                        ? 'Undo'
                                        : 'Select',
                                    color: darkBG,
                                    icon: Icons.check,
                                    onTap: () {
                                      setState(() {
                                        showList[index].userPicked =
                                            !showList[index].userPicked;
                                        if (showList[index].userPicked ==
                                                false &&
                                            itemCounter > 0) {
                                          itemCounter--;
                                        } else if (showList[index].userPicked ==
                                                false &&
                                            itemCounter == 2) {
                                          return;
                                        } else if (showList[index].userPicked ==
                                                true &&
                                            itemCounter < 2) {
                                          itemCounter++;
                                        }
                                      });
                                    },
                                  )
                                ],
                                child: Container(
                                  child: FoodItemCard2(
                                    itemName: showList[index].itemName,
                                    imageUrl: showList[index].imgUrl,
                                    calAmount: showList[index].calNumber,
                                    carbAmount: showList[index].carbNumber,
                                    fatAmount: showList[index].fatNumber,
                                    proAmount: showList[index].proNumber,
                                    isPaused: isPaused,
                                    isLimitCrossed: itemCounter >= userLimit,
                                    userPicked: showList[index].userPicked,
                                    pickedIcon: showList[index].pickedIcon,
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ItemFullPage(
                                            imageUrl: showList[index].imgUrl,
                                            itemName: showList[index].itemName,
                                            calAmount:
                                                showList[index].calNumber,
                                            fatAmount:
                                                showList[index].fatNumber,
                                            carbAmount:
                                                showList[index].carbNumber,
                                            proAmount:
                                                showList[index].proNumber,
                                            itemInfo: showList[index].itemInfo,
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

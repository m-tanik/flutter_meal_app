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
        imgUrl:
            'https://images.unsplash.com/photo-1481070414801-51fd732d7184?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=925&q=80',
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
        imgUrl:
            'https://images.unsplash.com/photo-1594007654729-407eedc4be65?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=669&q=80',
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
        imgUrl:
            'https://images.unsplash.com/photo-1550547660-d9450f859349?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=701&q=80',
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
        // imgUrl: 'assets/images/burger.jpg',
        imgUrl:
            'https://images.unsplash.com/photo-1550547660-d9450f859349?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=701&q=80',
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
        imgUrl:
            'https://images.unsplash.com/photo-1594007654729-407eedc4be65?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=669&q=80',
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
        imgUrl:
            'https://images.unsplash.com/photo-1520201163981-8cc95007dd2a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80',
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
        imgUrl:
            'https://images.unsplash.com/photo-1481070414801-51fd732d7184?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=925&q=80',
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

  // date selector / calender on top

  Container topCalenderContainer() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              size: 16,
            ),
            color: primaryColor,
          ),
          SizedBox(
            width: 35,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
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
                  width: 12,
                ),
                Text(
                  '12 Aug, 2020',
                  style: Theme.of(context).textTheme.headline4.merge(TextStyle(
                      color: primaryColor, fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 35,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
            color: primaryColor,
          ),
        ],
      ),
    );
  }

  // top buttons row and functionality

  Container topRowButtonsContainer() {
    return Container(
      child: Card(
        color: darkBG,
        elevation: 12,
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
                    showList.map((e) => e.userPicked = false).toList();

                    // isPaused = !isPaused;
                  });
                },
                color: isPaused ? Colors.yellow[200].withOpacity(0.6) : gray800,
                icon: Icons.pause,
                iconColor: Color(0xffFED47E),
              ),
              SizedBox(
                width: 12,
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
    );
  }

  //listview builder and functionality

  ListView listviewBuilder() {
    return ListView.builder(
        itemCount: showList.length,
        itemBuilder: (context, index) {
          return Container(
            child: isPaused ||
                    itemCounter >= userLimit && !allItems[index].userPicked
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
                              carbAmount: showList[index].carbNumber,
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
                        caption: showList[index].userPicked ? 'Undo' : 'Select',
                        color: darkBG,
                        icon: Icons.check,
                        onTap: () {
                          setState(() {
                            showList[index].userPicked =
                                !showList[index].userPicked;
                            if (showList[index].userPicked == false &&
                                itemCounter > 0) {
                              itemCounter--;
                            } else if (showList[index].userPicked == false &&
                                itemCounter == 2) {
                              return;
                            } else if (showList[index].userPicked == true &&
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
                                calAmount: showList[index].calNumber,
                                fatAmount: showList[index].fatNumber,
                                carbAmount: showList[index].carbNumber,
                                proAmount: showList[index].proNumber,
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
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              topCalenderContainer(),

              SizedBox(
                height: 20,
              ),

              // this container contains top Row below the app bar
              topRowButtonsContainer(),
              SizedBox(
                height: 20,
              ),

              //this container shows the category text only
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  'All',
                  style: Theme.of(context).textTheme.headline3.merge(
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          color: gray50,
                        ),
                      ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              //this is the listview of all cards
              Expanded(
                child: listviewBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

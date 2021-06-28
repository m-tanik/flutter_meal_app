import 'dart:ui';

import 'package:flutter/material.dart';
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
  bool isEnable;
  int itemCounter;
  bool userPicked = false;
  bool isPaused = false;

  List<ItemModel> foodItems = [
    ItemModel(
        itemName: 'Burger',
        imgUrl:
            'https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg?cs=srgb&dl=pexels-valeria-boltneva-1639562.jpg&fm=jpg',
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
            'https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/8/1/6/5/1805618-1-eng-GB/Dairy-group-grabs-a-pizza-the-action_wrbm_large.jpg',
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
        imgUrl: 'https://image.freepik.com/free-photo/sandwich_1339-1108.jpg',
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
    isEnable = false;
    itemCounter = 0;
    userPicked = false;
    isPaused = false;
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
                child: GestureDetector(
                  onTap: () {},
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
                      Icon(
                        Icons.calendar_today_outlined,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '12 Aug, 2020',
                        style: heading6Style,
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
                              isEnable = !isEnable;
                              itemCounter = 0;
                              userPicked = false;
                              // isPaused = !isPaused;
                            });
                          },
                          color: isEnable
                              ? Colors.yellow[200].withOpacity(0.6)
                              : gray800,
                          icon: Icons.pause,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              '$itemCounter / 3',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        TopIconButton(
                          onTap: isEnable
                              ? () {}
                              : () {
                                  Navigator.pop(context);
                                },
                          icon: Icons.check,
                          color: itemCounter > 0 ? primaryColor : gray800,
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
                        child: isEnable
                            ? Container(
                                child: FoodItemCard(
                                  itemName: foodItems[index].itemName,
                                  imageUrl: foodItems[index].imgUrl,
                                  calAmount: foodItems[index].calNumber,
                                  carbAmount: foodItems[index].carbNumber,
                                  fatAmount: foodItems[index].fatNumber,
                                  proAmount: foodItems[index].proNumber,
                                  isEnable: isEnable,
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
                                            itemCounter == 3) {
                                          return;
                                        } else if (foodItems[index]
                                                    .userPicked ==
                                                true &&
                                            itemCounter < 3) {
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
                                    isEnable: isEnable,
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

// Card for every single food item
class FoodItemCard extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final int calAmount;
  final int fatAmount;
  final int carbAmount;
  final int proAmount;
  final Function onTap;
  final bool isEnable;
  final bool userPicked;
  final IconData pickedIcon;

  FoodItemCard({
    this.imageUrl,
    this.itemName,
    this.calAmount,
    this.carbAmount,
    this.fatAmount,
    this.proAmount,
    this.onTap,
    this.isEnable,
    this.userPicked,
    this.pickedIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: userPicked && !isEnable
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
        color: isEnable ? gray700.withOpacity(0.1) : gray700,
        elevation: isEnable ? 5 : 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 1, top: 8, right: 8, bottom: 8),
          child: ListTile(
            enabled: !isEnable,
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
                  image: NetworkImage('$imageUrl'),
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
                          color: isEnable ? gray200.withOpacity(0.2) : gray50),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  pickedIcon,
                  size: 18,
                  color: userPicked && !isEnable
                      ? primaryColor
                      : Colors.transparent.withOpacity(0),
                )
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
                              color: isEnable
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
                                  isEnable ? gray200.withOpacity(0.2) : gray50),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Fat',
                          style: TextStyle(
                              fontSize: 10,
                              color: isEnable
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
                                  isEnable ? gray200.withOpacity(0.2) : gray50),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Carb',
                          style: TextStyle(
                              fontSize: 10,
                              color: isEnable
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
                                  isEnable ? gray200.withOpacity(0.2) : gray50),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Pro',
                          style: TextStyle(
                              fontSize: 10,
                              color: isEnable
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
                                  isEnable ? gray200.withOpacity(0.2) : gray50),
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

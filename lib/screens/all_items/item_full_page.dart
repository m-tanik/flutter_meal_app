import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';

class ItemFullPage extends StatefulWidget {
  final String imageUrl;
  final String itemName;
  final String itemInfo;
  final int calAmount;
  final int fatAmount;
  final int carbAmount;
  final int proAmount;

  ItemFullPage(
      {this.imageUrl,
      this.itemName,
      this.itemInfo,
      this.calAmount,
      this.fatAmount,
      this.proAmount,
      this.carbAmount});
  @override
  _ItemFullPageState createState() => _ItemFullPageState();
}

class _ItemFullPageState extends State<ItemFullPage> {
  List<bool> isSelected = List.generate(4, (_) => false);
  @override
  Widget build(BuildContext context) {
    // String imageUrl = widget.imageUrl;

    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
        elevation: 0,
        backgroundColor: darkBG,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 180,
                  // width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: NetworkImage('${widget.imageUrl}'),
                        fit: BoxFit.cover),
                  ),
                ), //Photo Container
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.itemName}',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Text(
                          '${widget.itemInfo}',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // Item Name and details Container
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Cal',
                            style:
                                TextStyle(fontSize: 18, color: Colors.yellow),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${widget.calAmount}',
                            style: TextStyle(fontSize: 12, color: gray50),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 35,
                        color: gray200,
                      ),
                      Column(
                        children: [
                          Text(
                            'Fat',
                            style:
                                TextStyle(fontSize: 18, color: Colors.yellow),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${widget.fatAmount}',
                            style: TextStyle(fontSize: 12, color: gray50),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 35,
                        color: gray200,
                      ),
                      Column(
                        children: [
                          Text(
                            'Carb',
                            style:
                                TextStyle(fontSize: 18, color: Colors.yellow),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${widget.carbAmount}',
                            style: TextStyle(fontSize: 12, color: gray50),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 35,
                        color: gray200,
                      ),
                      Column(
                        children: [
                          Text(
                            'Pro',
                            style:
                                TextStyle(fontSize: 18, color: Colors.yellow),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${widget.proAmount}',
                            style: TextStyle(fontSize: 12, color: gray50),
                          ),
                        ],
                      ),
                    ],
                  ),
                ), // Calorie column container
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose Carb Level',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: gray800,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ToggleButtons(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '0',
                                      style: (TextStyle(fontSize: 18)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '50',
                                      style: (TextStyle(fontSize: 18)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '100',
                                      style: (TextStyle(fontSize: 18)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '200',
                                      style: (TextStyle(fontSize: 18)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            color: gray50,
                            borderRadius: BorderRadius.circular(30),
                            borderWidth: 2,
                            borderColor: primaryColor,
                            renderBorder: false,
                            fillColor: primaryColor,
                            selectedColor: gray50,
                            isSelected: isSelected,
                            constraints: BoxConstraints(
                              maxWidth: double.infinity,
                              // minWidth:
                              //     (MediaQuery.of(context).size.width - 36) / 5,
                            ),
                            onPressed: (int newIndex) {
                              setState(() {
                                // isSelected[index] = !isSelected[index];
                                for (int index = 0;
                                    index < isSelected.length;
                                    index++) {
                                  if (index == newIndex) {
                                    isSelected[index] = true;
                                  } else {
                                    isSelected[index] = false;
                                  }
                                }
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ), //carb level container
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Remarks',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: gray800,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(color: primaryColor),
                            textAlign: TextAlign.center,
                            cursorColor: primaryColor,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              )),
                              hintText: 'Text',
                              focusColor: gray700,
                              filled: true,
                              fillColor: gray800,
                              hintStyle: TextStyle(color: gray200),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Remarks Container

                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                FillButton(
                  onPressed: () {},
                  text: 'Select',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

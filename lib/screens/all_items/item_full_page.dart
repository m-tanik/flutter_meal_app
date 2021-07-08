import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scale_kuwait_mobile_app/theme_data.dart';
import 'package:scale_kuwait_mobile_app/components/buttons/FillButton.dart';
import 'package:scale_kuwait_mobile_app/screens/background_svg.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
  bool itemSelected = false;

  List<bool> isSelected = List.generate(4, (_) => false);

  Container calFatCarbProContainer() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Cal',
                style: Theme.of(context).textTheme.bodyText2.merge(
                      TextStyle(fontWeight: FontWeight.w400, color: gray300),
                    ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '${widget.calAmount}',
                style: Theme.of(context).textTheme.headline5.merge(
                      TextStyle(
                        fontWeight: FontWeight.w600,
                        color: gray200,
                      ),
                    ),
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
                style: Theme.of(context).textTheme.bodyText2.merge(
                      TextStyle(
                        fontWeight: FontWeight.w400,
                        color: gray300,
                      ),
                    ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '${widget.fatAmount}',
                style: Theme.of(context).textTheme.headline5.merge(
                      TextStyle(
                        fontWeight: FontWeight.w600,
                        color: gray200,
                      ),
                    ),
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
                style: Theme.of(context).textTheme.bodyText2.merge(
                      TextStyle(
                        fontWeight: FontWeight.w400,
                        color: gray300,
                      ),
                    ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '${widget.carbAmount}',
                style: Theme.of(context).textTheme.headline5.merge(
                      TextStyle(
                        fontWeight: FontWeight.w600,
                        color: gray200,
                      ),
                    ),
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
                style: Theme.of(context).textTheme.bodyText2.merge(
                      TextStyle(
                        fontWeight: FontWeight.w400,
                        color: gray300,
                      ),
                    ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '${widget.proAmount}',
                style: Theme.of(context).textTheme.headline5.merge(
                      TextStyle(
                        fontWeight: FontWeight.w600,
                        color: gray200,
                      ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container chooseCarbLevelContainer() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Choose Carb Level',
            style: Theme.of(context).textTheme.bodyText1.merge(
                  TextStyle(
                    fontWeight: FontWeight.w700,
                    color: gray200,
                  ),
                ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: darkBG,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: primaryColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ToggleButtons(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 5.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isSelected[0] ? primaryColor : darkBG,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '0',
                          style: Theme.of(context).textTheme.bodyText2.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: gray50,
                                ),
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isSelected[1] ? primaryColor : darkBG,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '50',
                          style: Theme.of(context).textTheme.bodyText2.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: gray50,
                                ),
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isSelected[2] ? primaryColor : darkBG,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '100',
                          style: Theme.of(context).textTheme.bodyText2.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: gray50,
                                ),
                              ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: isSelected[3] ? primaryColor : darkBG,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Text(
                          '200',
                          style: Theme.of(context).textTheme.bodyText2.merge(
                                TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: gray50,
                                ),
                              ),
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
                fillColor: darkBG,
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
                    for (int index = 0; index < isSelected.length; index++) {
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
    );
  }

  Container remarkTextfieldContainer() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Remarks',
            style: Theme.of(context).textTheme.bodyText1.merge(
                  TextStyle(
                    fontWeight: FontWeight.w700,
                    color: gray200,
                  ),
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
                maxLines: 3,
                keyboardType: TextInputType.text,
                style: TextStyle(color: primaryColor),
                textAlign: TextAlign.start,
                cursorColor: primaryColor,
                decoration: InputDecoration(
                  // border: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(
                  //   Radius.circular(20),
                  // )),
                  border: InputBorder.none,
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
    );
    // Remarks Container
  }

  @override
  Widget build(BuildContext context) {
    // String imageUrl = widget.imageUrl;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backwardsCompatibility: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Background(
        child: Padding(
          padding: EdgeInsets.only(left: 32, top: 60, right: 32, bottom: 20),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          // image: AssetImage('${widget.imageUrl}'),
                          image:
                              CachedNetworkImageProvider('${widget.imageUrl}'),
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
                          style: Theme.of(context).textTheme.headline4.merge(
                                TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Text(
                            '${widget.itemInfo}',
                            style: Theme.of(context).textTheme.bodyText1.merge(
                                  TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: gray300,
                                  ),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ), // Item Name and details Container
                  SizedBox(
                    height: 30,
                  ),

                  calFatCarbProContainer(),

                  // Calorie column container
                  SizedBox(
                    height: 30,
                  ),

                  chooseCarbLevelContainer(),
                  //carb level container

                  SizedBox(
                    height: 30,
                  ),
                  remarkTextfieldContainer(),
                  // Remarks Container

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  FillButton(
                    onPressed: () {
                      setState(() {
                        itemSelected = true;
                      });
                      Navigator.pop(context, itemSelected);
                    },
                    text: 'Select',
                    fontWeight: FontWeight.w700,
                    textColor: gray50,
                    fontSize: 16,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

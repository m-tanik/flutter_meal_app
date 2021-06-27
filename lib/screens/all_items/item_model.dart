import 'package:flutter/cupertino.dart';

class ItemModel {
  final String itemName;
  final String imgUrl;
  final String itemInfo;
  final int calNumber;
  final int fatNumber;
  final int carbNumber;
  final int proNumber;
  final Function onTap;
  final int id;
  final IconData pickedIcon;
  bool userPicked;

  ItemModel(
      {@required this.itemName,
      this.imgUrl,
      this.calNumber,
      this.carbNumber,
      this.fatNumber,
      this.proNumber,
      this.onTap,
      this.itemInfo,
      this.id,
      this.pickedIcon,
      this.userPicked = false});
}

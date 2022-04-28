import 'package:flutter/material.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';

class SmallWidgets {
  static favouriteCircle(
      {double circleRadius = 20,
      Color? color,
      double opacity = 1,
      double iconRadius = 23}) {
    return CircleAvatar(
      radius: getW(circleRadius),
      backgroundColor: (color ?? MyColors.mainColor).withOpacity(opacity),
      child: Center(
        child: Icon(
          Icons.favorite,
          color: MyColors.whiteColor,
          size: getH(iconRadius),
        ),
      ),
    );
  }

  static starContainer({required double reyting, required int soni}) {
    return Container(
      height: getH(29),
      width: getW(75),
      decoration: ContainDecoration.Decoration(
        allRadius: 100,
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: getW(8)),
        child: Row(
          children: [
            Text(
              reyting.toString(),
              style: TextStyle(
                fontSize: getH(12),
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: getW(4)),
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: getH(17),
            ),
            SizedBox(width: getW(2)),
            Text(
              "(${soni}+)",
              style: TextStyle(
                fontSize: getH(9),
                color: const Color(0xff9796A1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static narx({required double narx}) {
    return Container(
      height: getH(28),
      width: getW(58),
      decoration: ContainDecoration.Decoration(
        allRadius: 100,
        color: MyColors.whiteColor,
      ),
      child: Row(
        children: [
          SizedBox(width: getW(7)),
          Padding(
            padding: EdgeInsets.only(top: getH(5)),
            child: Text(
              "\$",
              style: TextStyle(
                fontSize: getH(10),
                color: MyColors.mainColor,
              ),
            ),
          ),
          Text(
            narx.toString(),
            style: TextStyle(
              fontSize: getH(20.25),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

}

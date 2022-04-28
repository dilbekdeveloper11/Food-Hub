import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';

class ContainDecoration {
  static Decoration({
    DecorationImage? image,
    double topleft = 0,
    double topright = 0,
    double bottomleft = 0,
    double bottomright = 0,
    Color color = Colors.white,
    double allRadius = 0,
    Color borderColor = Colors.white,
  }) {
    return BoxDecoration(
      border: Border.all(color: borderColor),
      borderRadius: allRadius == 0
          ? BorderRadius.only(
              topLeft: Radius.circular(topleft),
              topRight: Radius.circular(topright),
              bottomLeft: Radius.circular(bottomleft),
              bottomRight: Radius.circular(bottomright),
            )
          : BorderRadius.circular(
              getH(
                allRadius,
              ),
            ),
      image: image,
      color: color,
    );
  }

  static internet({required String imUrl, required String text}) {
    return Container(
      height: getH(54),
      width: getW(139.26),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getH(28.5),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: getH(12)),
        child: Row(
          children: [
            Image.asset(imUrl),
            SizedBox(width: getW(8)),
            Text(
              text,
              style: TextStyle(
                fontSize: getH(15),
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }

  static textFormDecoration(
      {required String text, Color color = Colors.black}) {
    return InputDecoration(
      hintText: text,
      hintStyle: TextStyle(fontSize: getH(17), color: color),
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
      ),
    );
  }
}

class InputContain {
  static inputCont({
    required Widget widget,
    required Color bordColor,
  }) {
    return Container(
      height: getH(65),
      width: getW(324),
      decoration: ContainDecoration.Decoration(
        allRadius: 10,
        borderColor: bordColor,
      ),
      child: widget,
    );
  }
}

class textButton {
  static button({required String text}) {
    return Container(
      height: getH(60),
      width: getW(248),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getH(28.5),
        ),
        color: MyColors.mainColor,
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getH(15),
            color: MyColors.whiteColor,
          ),
        ),
      ),
    );
  }

  static arrowButton() {
    return Container(
      height: getH(38),
      width: getW(38),
      decoration: ContainDecoration.Decoration(
        allRadius: 10,
        color: MyColors.whiteColor,
      ),
      child: Center(
        child: Icon(
          Icons.arrow_back_ios,
          size: getH(20),
        ),
      ),
    );
  }
}

class SideMenuRow {
  static row({required String imageUrl, required String text}) {
    return Row(
      children: [
        SvgPicture.asset(
          imageUrl,
        ),
        SizedBox(width: getW(15)),
        Text(
          text,
          style: TextStyle(
            fontSize: getH(16),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

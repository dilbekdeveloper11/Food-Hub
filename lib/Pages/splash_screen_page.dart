import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyColors.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          Container(
            height: getH(163),
            width: getW(183),
            child: Image.asset(
              "assets/images/Group 18118.png",
            ),
          ),
        ],
      ),
    );
  }
}

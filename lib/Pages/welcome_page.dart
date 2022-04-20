import 'package:flutter/material.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/size_config.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: ContainDecoration.Decoration(
          imgUrl: "assets/images/brooke-lark-lcZ9NxhOSlo-unsplash 1.jpg",
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: ContainDecoration.Decoration(
            imgUrl: "assets/images/Rectangle 4168.png",
          ),
          child: Padding(
            padding: EdgeInsets.only(top: getH(26),),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: getH(32),
                  width: getW(55),
                  decoration: ContainDecoration.Decoration(
                    allRadius: 27.41,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

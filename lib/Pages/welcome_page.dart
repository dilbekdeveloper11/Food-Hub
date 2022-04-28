import 'package:flutter/material.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
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
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/brooke-lark-lcZ9NxhOSlo-unsplash 1.jpg"))),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: ContainDecoration.Decoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/Rectangle 4168.png"))),
          child: Padding(
            padding: EdgeInsets.only(top: getH(52), left: getH(30)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getH(260)),
                  child: Container(
                    height: getH(32),
                    width: getW(55),
                    decoration: ContainDecoration.Decoration(
                      allRadius: 27.41,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "skip",
                        style: TextStyle(
                          fontSize: getH(14),
                          color: MyColors.mainColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: getH(102)),
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: getH(45),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: getH(10)),
                Text(
                  "FoodHub",
                  style: TextStyle(
                      fontSize: getH(45),
                      fontWeight: FontWeight.bold,
                      color: MyColors.mainColor),
                ),
                SizedBox(height: getH(19)),
                Container(
                  height: getH(54),
                  width: getW(266),
                  child: Text(
                    "Your favourite foods delivered fast at your door.",
                    style: TextStyle(
                      fontSize: getH(18),
                      color: const Color(0xff30384F),
                    ),
                  ),
                ),
                SizedBox(height: getH(213)),
                Padding(
                  padding: EdgeInsets.only(left: getW(14)),
                  child: Row(
                    children: [
                      Image.asset("assets/images/Line 71.png"),
                      SizedBox(width: getW(17)),
                      Text(
                        "sign in with",
                        style: TextStyle(
                          fontSize: getH(16),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: getW(17)),
                      Image.asset("assets/images/Line 71.png"),
                    ],
                  ),
                ),
                SizedBox(height: getH(25)),
                Row(
                  children: [
                    ContainDecoration.internet(
                      imUrl: "assets/images/Group 17863.png",
                      text: "FACEBOOK",
                    ),
                    SizedBox(width: getW(35)),
                    ContainDecoration.internet(
                      imUrl: "assets/images/Group 17967.png",
                      text: 'GOOGLE',
                    )
                  ],
                ),
                SizedBox(height: getH(23)),
                Container(
                  height: getH(54),
                  width: getW(315),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getH(30),
                    ),
                    color: Colors.white.withOpacity(0.21),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Start with email or phone",
                      style: TextStyle(fontSize: getH(17), color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: getH(25)),
                Row(
                  children: [
                    SizedBox(width:getW(35)),
                    Text(
                      "Already have an account? ",
                      style: TextStyle(fontSize: getH(16), color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      " Sign In",
                      style: TextStyle(fontSize: getH(16), color: Colors.white),
                      textAlign: TextAlign.center,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

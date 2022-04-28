import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodhub/Pages/food_details/food_details_widgets.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';
import 'package:foodhub/core/small_widgets.dart';

class FoodDetailsPage extends StatelessWidget {
  const FoodDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: getH(47), left: getW(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getH(206),
              width: getW(323),
              decoration: ContainDecoration.Decoration(
                allRadius: 25,
                image: const DecorationImage(
                  image: AssetImage("assets/images/fooddetails.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: getH(10), left: getW(20)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textButton.arrowButton(),
                    SizedBox(width: getW(213)),
                    SmallWidgets.favouriteCircle()
                  ],
                ),
              ),
            ),
            SizedBox(height: getH(22)),
            Text(
              "Ground Beef Tacos",
              style: TextStyle(
                fontSize: getH(28),
                color: const Color(0xff323643),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: getH(15)),
            Row(
              children: [
                SizedBox(width: getW(4)),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: getH(24),
                ),
                SizedBox(width: getW(7)),
                Text(
                  "4.5",
                  style: TextStyle(
                    fontSize: getH(19),
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: getW(2)),
                Text(
                  "(25+)",
                  style: TextStyle(
                    fontSize: getH(14),
                    color: const Color(0xff9796A1),
                  ),
                ),
                SizedBox(width: getW(13)),
                Text(
                  "See Review",
                  style: TextStyle(
                    fontSize: getH(13),
                    color: MyColors.mainColor,
                  ),
                )
              ],
            ),
            SizedBox(height: getH(25)),
            Row(
              children: [
                SizedBox(width: getW(7)),
                Padding(
                  padding: EdgeInsets.only(top: getH(5)),
                  child: Text(
                    "\$",
                    style: TextStyle(
                      fontSize: getH(15),
                      color: MyColors.mainColor,
                    ),
                  ),
                ),
                Text(
                  "5.50",
                  style: TextStyle(
                    fontSize: getH(27.25),
                    color: MyColors.mainColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: getW(150)),
                Icon(
                  Icons.remove_circle_outline,
                  color: MyColors.mainColor,
                  size: getH(30),
                ),
                SizedBox(width: getW(9)),
                Text(
                  "02",
                  style: TextStyle(
                    fontSize: getH(16),
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: getW(9)),
                Icon(
                  Icons.add_circle,
                  color: MyColors.mainColor,
                  size: getH(30),
                )
              ],
            ),
            SizedBox(height: getH(26)),
            Container(
              width: getW(323),
              child: Text(
                "Brown the beef better. Lean ground beef – I like to use 85% lean angus. Garlic – use fresh  chopped. Spices – chili powder, cumin, onion powder.",
                style: TextStyle(
                  fontSize: getH(15),
                  color: const Color(0xff858992),
                ),
              ),
            ),
            SizedBox(height: getH(22)),
            Text(
              "Choice of Add On",
              style: TextStyle(
                fontSize: getH(18),
                color: Color(0xff323643),
              ),
            ),
            SizedBox(height: getH(20)),
            FoodDetails.choiseOfadd(
              img: "assets/images/paper.png",
              name: "Pepper Julienned",
              narx: 2.30,
            ),
            FoodDetails.choiseOfadd(
              img: "assets/images/bille.png",
              name: "Baby Spinach",
              narx: 4.70,
            ),
            FoodDetails.choiseOfadd(
              img: "assets/images/masroom.png",
              name: "Masroom",
              narx: 2.50,
            ),
            SizedBox(height: getH(60)),
            Padding(
              padding:  EdgeInsets.only(left: getW(80)),
              child: Container(
                height: getH(53),
                width: getW(167),
                decoration: ContainDecoration.Decoration(
                  allRadius: 29,
                  color: MyColors.mainColor,
                ),
                child: Row(
                  children: [
                    SizedBox(width:getW(12)),
                    CircleAvatar(
                      radius: getH(20),
                      backgroundColor: MyColors.whiteColor,
                      child: Center(
                        child: SvgPicture.asset("assets/images/Path 3414.svg"),
                      ),
                    ),
                    SizedBox(
                      width: getW(13),
                    ),
                    Text(
                      "Add to cart",
                      style: TextStyle(
                        fontSize: getH(15),
                        color: MyColors.whiteColor,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

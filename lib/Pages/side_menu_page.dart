import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';

class SideMenuPage extends StatelessWidget {
  const SideMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: getH(56), left: getW(26)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: getH(45),
              backgroundImage: const AssetImage(
                "assets/images/1200px-Flag_of_the_United_Kingdom.png",
              ),
            ),
            SizedBox(height: getH(21)),
            Text(
              "Farion Wick",
              style: TextStyle(
                  fontSize: getH(20),
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: getH(7)),
            Text(
              "farionwick@gmail.com",
              style: TextStyle(
                fontSize: getH(14),
                color: const Color(0xff9EA1B1),
              ),
            ),
            SizedBox(height: getH(45)),
            SideMenuRow.row(
                imageUrl: "assets/images/Document.svg", text: "My Orders"),
            SizedBox(height: getH(40)),
            SideMenuRow.row(
                imageUrl: "assets/images/Profile.svg", text: "My Profile"),
            SizedBox(height: getH(40)),
            SideMenuRow.row(
                imageUrl: "assets/images/Location.svg",
                text: "Delivery Address"),
            SizedBox(height: getH(40)),
            SideMenuRow.row(
                imageUrl: "assets/images/Wallet.svg", text: "Payment Methods"),
            SizedBox(height: getH(40)),
            SideMenuRow.row(
                imageUrl: "assets/images/Message.svg", text: "Contact Us"),
            SizedBox(height: getH(40)),
            SideMenuRow.row(
                imageUrl: "assets/images/Setting.svg", text: "Settings"),
            SizedBox(height: getH(40)),
            SideMenuRow.row(
                imageUrl: "assets/images/Helps.svg", text: "Helps & FAQs"),
            SizedBox(height: getH(110)),
            Container(
              height: getH(43),
              width: getW(117),
              decoration: ContainDecoration.Decoration(
                allRadius: 28.5,
                color: MyColors.mainColor,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: getW(9)),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/images/Group 18072.svg"),
                    SizedBox(width: getW(9)),
                    Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: getH(16),
                        color: MyColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

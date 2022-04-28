import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';
import 'package:foodhub/core/small_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: getH(45), left: getW(26)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: getH(38),
                      width: getW(38),
                      decoration: ContainDecoration.Decoration(
                        allRadius: 10,
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    SizedBox(width: getW(48)),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Deliver to",
                              style: TextStyle(
                                fontSize: getH(14),
                                color: const Color(0xff8C9099),
                              ),
                            ),
                            SizedBox(width: getW(5)),
                            SvgPicture.asset("assets/images/Vector 10.svg")
                          ],
                        ),
                        SizedBox(height: getH(5)),
                        Text(
                          "4102  Pretty View Lane ",
                          style: TextStyle(
                            fontSize: getH(15),
                            color: MyColors.mainColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: getW(30)),
                    Container(
                      height: getH(38),
                      width: getW(38),
                      decoration: ContainDecoration.Decoration(
                        allRadius: 10,
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://source.unsplash.com/random",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: getH(30)),
                Container(
                  height: getH(60),
                  width: getW(272),
                  child: Text(
                    "What would you like to order",
                    style: TextStyle(
                      fontSize: getH(30),
                      color: const Color(0xff323643),
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(height: getH(19)),
                Row(
                  children: [
                    Container(
                      height: getH(51),
                      width: getW(256),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(getH(10)),
                        border: Border.all(
                          color: const Color(0xffEFEFEF),
                        ),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          enabled: false,
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          hintText: "Find for food or restaurant...",
                          hintStyle: TextStyle(
                            fontSize: getH(14),
                            color: const Color(0xff9AA0B4),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: getW(18)),
                    Container(
                      height: getH(51),
                      width: getW(51),
                      decoration: ContainDecoration.Decoration(
                        allRadius: 14,
                        borderColor: Colors.white,
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/filter.png",
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: getH(30)),
                Container(
                  height: getH(100),
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: getH(98),
                            width: getW(59),
                            decoration: ContainDecoration.Decoration(
                              allRadius: 100,
                              color: MyColors.mainColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: getH(22),
                                  backgroundImage: const NetworkImage(
                                    "https://source.unsplash.com/random/",
                                  ),
                                ),
                                SizedBox(height: getH(15)),
                                Text(
                                  "Burger",
                                  style: TextStyle(
                                    fontSize: getH(11),
                                    color: MyColors.whiteColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getW(15),
                          )
                        ],
                      );
                    },
                    itemCount: 10,
                  ),
                ),
                SizedBox(height: getH(30)),
                Row(
                  children: [
                    Text(
                      "Featured Restaurants",
                      style: TextStyle(
                        fontSize: getH(18),
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff323643),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View all",
                      style: TextStyle(
                        fontSize: getH(13),
                        color: MyColors.mainColor,
                      ),
                    ),
                    SizedBox(width: getW(5)),
                    Icon(
                      Icons.navigate_next,
                      color: MyColors.mainColor,
                    )
                  ],
                ),
                SizedBox(height: getH(15)),
                Container(
                  height: getH(230),
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: getH(229),
                            width: getW(266),
                            decoration:
                                ContainDecoration.Decoration(allRadius: 15),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getH(136),
                                      width: getW(266),
                                      decoration: ContainDecoration.Decoration(
                                        topleft: 15,
                                        topright: 15,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/1200px-Flag_of_the_United_Kingdom.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: getH(12)),
                                    Row(
                                      children: [
                                        Text(
                                          "McDonald’s",
                                          style: TextStyle(
                                            fontSize: getH(15),
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(width: getW(5)),
                                        SvgPicture.asset(
                                          "assets/images/Group 17801.svg",
                                        )
                                      ],
                                    ),
                                    SizedBox(height: getH(7)),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/Group 17504.svg",
                                          color: const Color(0xffFE724C),
                                        ),
                                        SizedBox(width: getW(6)),
                                        Text(
                                          "Free Delivery",
                                          style: TextStyle(
                                            fontSize: getH(12),
                                            color: const Color(0xff7E8392),
                                          ),
                                        ),
                                        SizedBox(width: getW(17)),
                                        SvgPicture.asset(
                                          "assets/images/Group 17503.svg",
                                          color: const Color(0xffFE724C),
                                        ),
                                        SizedBox(width: getW(7)),
                                        Text(
                                          "10-15 mins",
                                          style: TextStyle(
                                            fontSize: getH(12),
                                            color: const Color(0xff7E8392),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: getH(12)),
                                    Row(
                                      children: [
                                        Container(
                                          height: getH(24),
                                          width: getW(54),
                                          decoration:
                                              ContainDecoration.Decoration(
                                            allRadius: 5,
                                            color: const Color(0xffF6F6F6),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "BURGER",
                                              style: TextStyle(
                                                fontSize: getH(12),
                                                color: const Color(0xff8A8E9B),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: getW(8)),
                                        Container(
                                          height: getH(24),
                                          width: getW(60),
                                          decoration:
                                              ContainDecoration.Decoration(
                                            allRadius: 5,
                                            color: const Color(0xffF6F6F6),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "CHICKEN",
                                              style: TextStyle(
                                                fontSize: getH(12),
                                                color: const Color(0xff8A8E9B),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: getW(8)),
                                        Container(
                                          height: getH(24),
                                          width: getW(76),
                                          decoration:
                                              ContainDecoration.Decoration(
                                            allRadius: 5,
                                            color: const Color(0xffF6F6F6),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "FAST FOOD",
                                              style: TextStyle(
                                                fontSize: getH(12),
                                                color: const Color(0xff8A8E9B),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                    top: getH(10),
                                    left: getW(11),
                                    child: SmallWidgets.starContainer(
                                        reyting: 4.5, soni: 25)),
                                Positioned(
                                  top: getH(10),
                                  left: getW(200),
                                  child: SmallWidgets.favouriteCircle(),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: getW(20),
                          ),
                        ],
                      );
                    },
                    itemCount: 5,
                  ),
                ),
                SizedBox(height: getH(24)),
                Text(
                  "Popular Items",
                  style: TextStyle(
                    fontSize: getH(18),
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff323643),
                  ),
                ),
                SizedBox(height: getH(15)),
                Container(
                  height: getH(200),
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: getH(216),
                            width: getW(154.43),
                            decoration: ContainDecoration.Decoration(
                              allRadius: 15,
                              color: Colors.white,
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: getH(147.36),
                                      width: getW(154.43),
                                      decoration: ContainDecoration.Decoration(
                                        topleft: 15,
                                        topright: 15,
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/salmon salad.jpg",
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: getH(15)),
                                    Text(
                                      "Salmon Salad",
                                      style: TextStyle(
                                        fontSize: getH(14),
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: getH(9)),
                                    Text(
                                      "Baked salmon fish",
                                      style: TextStyle(
                                        fontSize: getH(12),
                                        color: const Color(0xff9796A1),
                                      ),
                                    )
                                  ],
                                ),
                                Positioned(
                                  top: getH(134.24),
                                  left: getW(8),
                                  child: SmallWidgets.starContainer(
                                    reyting: 5.5,
                                    soni: 30,
                                  ),
                                ),
                                Positioned(
                                  top: getH(11),
                                  left: getW(108),
                                  child: SmallWidgets.favouriteCircle(
                                    circleRadius: 15,
                                    color: Colors.grey,
                                    opacity: 0.6,
                                    iconRadius: 18,
                                  ),
                                ),
                                Positioned(
                                  top: getH(10),
                                  left: getW(10),
                                  child: SmallWidgets.narx(narx: 5.50)
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: getW(15)),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

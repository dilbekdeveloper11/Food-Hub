import 'package:flutter/material.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: getH(47), left: getW(26)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textButton.arrowButton(),
            SizedBox(height: getH(37)),
            Text(
              "FAST",
              style: TextStyle(
                fontSize: getH(45),
                fontWeight: FontWeight.w700,
                color: const Color(0xff272D2F),
              ),
            ),
            SizedBox(height: getH(15)),
            Text(
              "FOOD",
              style: TextStyle(
                fontSize: getH(45),
                fontWeight: FontWeight.w700,
                color:  MyColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

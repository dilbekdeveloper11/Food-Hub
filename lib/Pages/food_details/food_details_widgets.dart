import 'package:flutter/material.dart';
import 'package:foodhub/core/size_config.dart';

class FoodDetails {
  static choiseOfadd({required String img,required String name,required double narx,}) {
    return Row(
      children: [
        Container(
          height: getH(48),
          width: getW(51),
          child: Image.asset(img),
        ),
        SizedBox(width: getW(4)),
        Text(
          name,
          style: TextStyle(
            fontSize: getH(14),
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Text(
          "+\$$narx",
          style: TextStyle(
            fontSize: getH(14),
            color: Colors.black,
          ),
        ),
        SizedBox(width: getW(12)),
      ],
    );
  }
}

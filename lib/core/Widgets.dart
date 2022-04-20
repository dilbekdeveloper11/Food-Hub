import 'package:flutter/material.dart';
import 'package:foodhub/core/size_config.dart';

class ContainDecoration {
  static Decoration({
    String imgUrl = "",
    double topleft = 0,
    double topright = 0,
    double bottomleft = 0,
    double bottomright = 0,
    Color? color,
    double allRadius = 0,
  }) {
    return BoxDecoration(
      borderRadius: allRadius != 0
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
      image: DecorationImage(
        image: AssetImage(
          imgUrl,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodhub/Pages/category_page.dart';
import 'package:foodhub/Pages/food_details/food_details_page.dart';
import 'package:foodhub/Pages/home_page/home_screen_page.dart';
import 'package:foodhub/Pages/login_page.dart';

import 'package:foodhub/Pages/phone_registration_page.dart';
import 'package:foodhub/Pages/reset_password_page.dart';
import 'package:foodhub/Pages/side_menu_page.dart';
import 'package:foodhub/Pages/sign_up_page.dart';
import 'package:foodhub/Pages/splash_screen_page.dart';
import 'package:foodhub/Pages/verification_code_page.dart';
import 'package:foodhub/Pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Jose",
        primarySwatch: Colors.blue,
      ),
      home: const CategoryPage(),
    );
  }
}

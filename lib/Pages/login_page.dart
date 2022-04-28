import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: getH(47), left: getW(27)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textButton.arrowButton(),
            SizedBox(height: getH(105)),
            Text(
              "Login",
              style: TextStyle(
                fontSize: getH(36.41),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getH(31)),
            Text(
              "E-mail",
              style: TextStyle(
                fontSize: getH(16),
                color: const Color(0xff9796A1),
              ),
            ),
            SizedBox(height: getH(12)),
            InputContain.inputCont(
              widget: TextFormField(
                decoration: ContainDecoration.textFormDecoration(
                  text: "Your email or phone",
                  color: const Color(0xffC4C4C4),
                ),
              ),
              bordColor: MyColors.bordColor,
            ),
            SizedBox(height: getH(29)),
            Text(
              "E-mail",
              style: TextStyle(
                fontSize: getH(16),
                color: const Color(0xff9796A1),
              ),
            ),
            SizedBox(height: getH(12)),
            InputContain.inputCont(
              widget: TextFormField(
                obscureText: false,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  hintText: "texttextetxt",
                  hintStyle: TextStyle(
                      fontSize: getH(17), color: const Color(0xffC4C4C4)),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              bordColor: MyColors.bordColor,
            ),
            SizedBox(height: getH(32)),
            Padding(
              padding: EdgeInsets.only(left: getW(98)),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: getH(14),
                  color: MyColors.mainColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: getH(32)),
            Padding(
              padding: EdgeInsets.only(
                left: getW(40),
              ),
              child: textButton.button(text: "Login"),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getH(32),
                left: getW(49),
              ),
              child: Row(
                children: [
                  Text(
                    "Don’t have an account? ",
                    style: TextStyle(
                      fontSize: getH(14),
                      color: const Color(0xff5B5B5E),
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: getH(14),
                      color: MyColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getH(59)),
            Row(
              children: [
                Image.asset("assets/images/Line 71grey.png"),
                SizedBox(width: getW(17)),
                Text(
                  "sign in with",
                  style: TextStyle(
                    fontSize: getH(16),
                    color: const Color(0xff5B5B5E),
                  ),
                ),
                SizedBox(width: getW(17)),
                Image.asset("assets/images/Line 71grey.png"),
              ],
            ),
            SizedBox(height: getH(15)),
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
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

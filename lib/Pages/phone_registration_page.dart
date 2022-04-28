import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';

class PhoneRegistration extends StatelessWidget {
  const PhoneRegistration({Key? key}) : super(key: key);

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
              "Registration",
              style: TextStyle(
                fontSize: getH(36.41),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: getH(12)),
            Container(
              height: getH(38),
              width: getW(289),
              child: Text(
                "Enter your phone number to verify your account",
                style: TextStyle(
                  fontSize: getH(14),
                  color: const Color(0xff9796A1),
                ),
              ),
            ),
            SizedBox(height: getH(38)),
            InputContain.inputCont(
              widget: Padding(
                padding: EdgeInsets.only(left: getW(16)),
                child: Row(
                  children: [
                    Container(
                      height: getH(30),
                      width: getW(49),
                      decoration: ContainDecoration.Decoration(
                        allRadius: 8,
                        image: const DecorationImage(
                          image: AssetImage(
                            "assets/images/1200px-Flag_of_the_United_Kingdom.png",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: getW(13)),
                    SvgPicture.asset("assets/images/Vector 10.svg"),
                    Container(
                      height: getH(60),
                      width: getW(200),
                      child: TextFormField(
                        decoration: ContainDecoration.textFormDecoration(
                          text: "(+1) 230-333-0181",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              bordColor: MyColors.mainColor,
            ),
            SizedBox(height: getH(51)),
            Padding(
              padding: EdgeInsets.only(left: getW(40)),
              child: textButton.button(text: "Send"),
            ),
          ],
        ),
      ),
    );
  }
}

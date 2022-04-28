import 'package:flutter/material.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';

class ResetPassWordPage extends StatelessWidget {
  const ResetPassWordPage({Key? key}) : super(key: key);

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
              "Resset Password",
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
                "Please enter your email address to request a password reset",
                style: TextStyle(
                  fontSize: getH(14),
                  color: const Color(0xff9796A1),
                ),
              ),
            ),
            SizedBox(height: getH(38)),
            InputContain.inputCont(
              widget: TextFormField(
                decoration: ContainDecoration.textFormDecoration(
                  text: "prelookstudio@gmail.com",
                ),
              ),
              bordColor: MyColors.mainColor,
            ),
            SizedBox(height: getH(51)),
            Padding(
              padding: EdgeInsets.only(left: getW(40)),
              child: textButton.button(text: "Send new password"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodhub/core/Widgets.dart';
import 'package:foodhub/core/colors.dart';
import 'package:foodhub/core/size_config.dart';
import 'package:pinput/pinput.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

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
              "Verification Code",
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
                "Please type the verification code sent to prelookstudio@gmail.com",
                style: TextStyle(
                  fontSize: getH(14),
                  color: const Color(0xff9796A1),
                ),
              ),
            ),
            SizedBox(height: getH(31)),
            Padding(
              padding: EdgeInsets.only(left: getW(40)),
              child: const Pinput(length: 4),
            ),
            SizedBox(height: getH(32)),
            Padding(
              padding: EdgeInsets.only(
                left: getW(49),
              ),
              child: Row(
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: getH(14),
                      color: const Color(0xff5B5B5E),
                    ),
                  ),
                  Text(
                    " Login",
                    style: TextStyle(
                      fontSize: getH(14),
                      color: MyColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

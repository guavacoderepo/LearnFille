import 'package:flutter/material.dart';
import 'package:learnfille/constants/colors.dart';
import 'package:learnfille/constants/images.dart';
import 'package:learnfille/constants/padding.dart';
import 'package:learnfille/constants/spacer.dart';
import 'package:learnfille/utils/appbars.dart';

import '../utils/text.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// appbar
      // appBar: tranperantAppbar(),
// body design
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: true,
            child: Padding(
              padding: EdgeInsets.only(left: bodyPadding, right: bodyPadding),
              child: Column(
                children: [
// space from app bar
                  vertSpacer(80),
// top logo and app title
                  Row(
// set some properties
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(logoImg),
                      font4("LearnFille", 36, color: logoTextColor),
                      horizSpacer(10),
                    ],
                  ),
// infrographics section
                  vertSpacer(30),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(OnBoardingimg),
                  ),
                  vertSpacer(23),
// introduction text
                  alignmentText4(
                      "Rising talents in tech, one woman at a time", 18),
// bottom section
                  vertSpacer(23),
// login btn design
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: btnYellow,
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: font4("Login", 18, color: lightColor),
                    ),
                  ),
                  vertSpacer(30),
// register btn design
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: btnBlue, width: 1),
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: font4("Register", 18, color: btnBlue),
                    ),
                  )
// *******************************
// add new section/widget here
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

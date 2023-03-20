import 'package:flutter/material.dart';
import 'package:learnfille/constants/inputbox.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../constants/padding.dart';
import '../constants/spacer.dart';
import '../utils/text.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _namectr = TextEditingController();
  TextEditingController _emailctr = TextEditingController();
  TextEditingController _pwdctr = TextEditingController();
  TextEditingController _pwd2ctr = TextEditingController();

// create some variables
  bool? visible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // appbar
        // appBar: tranperantAppbar(),
        // body design
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.only(left: bodyPadding, right: bodyPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // space from app bar
                    vertSpacer(50),
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

                    vertSpacer(50),
// login input section
                    font4("Name", 14, color: textGrey),
                    vertSpacer(10),
                    inputField(_namectr),
                    vertSpacer(10),

                    font4("Email", 14, color: textGrey),
                    vertSpacer(10),
                    inputField(_emailctr),
                    vertSpacer(10),

                    font4("Password", 14, color: textGrey),
                    vertSpacer(10),
                    inputField(_pwdctr, obs: visible!),
                    vertSpacer(10),

                    font4("Confirm Password", 14, color: textGrey),
                    vertSpacer(10),
                    inputField(_pwd2ctr, obs: visible!),
                    vertSpacer(10),
// make password visible or hide
                    Row(
                      children: [
                        Checkbox(
                          value: visible,
                          onChanged: (v) {
                            setState(() => visible = v);
                          },
                        ),
                        font3("Hide password", 13)
                      ],
                    ),
// submit button
                    vertSpacer(30),

                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: btnBlue,
                          shape: StadiumBorder(),
                        ),
                        onPressed: () {},
                        child: font4("Create Account", 18, color: lightColor),
                      ),
                    ),
// or sign in with google
                    vertSpacer(20),
                    Align(
                      alignment: Alignment.center,
                      child: font4("OR", 15),
                    ),
                    vertSpacer(20),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(googleImg),
                          horizSpacer(5),
                          font4("Sign up with google", 13)
                        ],
                      ),
                    ),
                    vertSpacer(30),
// already have an account
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        font4("Already have an account? ", 13, color: textGrey),
                        // horizSpacer(1),
                        font4("Sign In", 13, color: activeBlue)
                      ],
                    ),

                    // *******************************
                    // add new section/widget here
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

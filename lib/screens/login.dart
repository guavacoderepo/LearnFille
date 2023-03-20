import 'package:flutter/material.dart';
import 'package:learnfille/constants/inputbox.dart';
import '../constants/colors.dart';
import '../constants/images.dart';
import '../constants/padding.dart';
import '../constants/spacer.dart';
import '../utils/text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailctr = TextEditingController();
  final TextEditingController _pwdctr = TextEditingController();

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

                    font4("Email", 14, color: textGrey),
                    vertSpacer(10),
                    inputField(_emailctr),
                    vertSpacer(10),

                    font4("Password", 14, color: textGrey),
                    vertSpacer(10),
                    inputField(_pwdctr, obs: visible!),
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
                        font3("Hide password", 13),
// forgotten pwd
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {},
                          child: font4("Forgotten Password?", 11),
                        ),
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
                        child: font4("Login", 18, color: lightColor),
                      ),
                    ),
// or sign in with google
                    vertSpacer(20),
                    Align(
                      alignment: Alignment.center,
                      child: font4("OR", 14),
                    ),
                    vertSpacer(20),

                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(googleImg),
                          horizSpacer(5),
                          font4("Sign In with google", 13)
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
                        font4("Sign Up", 13, color: activeBlue)
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

import 'package:flutter/material.dart';
import 'package:learnfille/constants/colors.dart';
import 'package:learnfille/constants/inputbox.dart';
import 'package:learnfille/constants/padding.dart';
import 'package:learnfille/constants/spacer.dart';
import 'package:learnfille/utils/appbars.dart';
import 'package:learnfille/utils/text.dart';

class LearningPage extends StatefulWidget {
  const LearningPage({super.key});

  @override
  State<LearningPage> createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: lightColor,
// appbar section
        appBar: otherAppbar("Learing"),
// body section
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: bodygrey,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: bodyPadding, right: bodyPadding),
            child: Column(
              children: [
                vertSpacer(20),
                searchbox(_search),
                vertSpacer(10),
                ListTile(
                  title: font7("Full Javascript Tutorial", 13),
                  subtitle: font4(
                      "Description: All can be perfect in math....", 13,
                      color: greyColor),
                  leading: const CircleAvatar(
                    backgroundColor: transparent,
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://blog.logrocket.com/wp-content/uploads/2021/02/machine-learning-libraries-javascript.png"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

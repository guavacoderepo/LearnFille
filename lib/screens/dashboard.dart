import 'package:flutter/material.dart';
import 'package:learnfille/constants/colors.dart';
import 'package:learnfille/constants/padding.dart';
import 'package:learnfille/utils/appbars.dart';
import 'package:learnfille/utils/text.dart';
import 'package:marquee/marquee.dart';
import '../constants/images.dart';
import '../constants/spacer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// appbar section
      appBar: dashbordAppbar(),

// body section
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(right: bodyPadding, left: bodyPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
// top icon image

                  horizSpacer(10),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      color: activeBlue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
// text section
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child:
                              font4("What would you Like to learn today?", 15),
                        ),
// top image

                        Image.asset(dashboardimg),

// to be reviewed
                      ],
                    ),
                  ),

                  vertSpacer(20),

// ************************************
// add content here
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          unselectedItemColor: iconGrey,
          selectedItemColor: darkColor,
          selectedIconTheme: IconThemeData(size: 35),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit_note_outlined), label: "Learn"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setings"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }
}

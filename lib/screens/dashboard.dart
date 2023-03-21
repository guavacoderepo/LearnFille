import 'package:flutter/material.dart';
import 'package:learnfille/constants/colors.dart';
import 'package:learnfille/constants/padding.dart';
import 'package:learnfille/utils/appbars.dart';
import 'package:learnfille/utils/text.dart';
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
                              font4("What would you Like to learn today?", 16),
                        ),
// top image

                        Image.asset(dashboardimg),

// to be reviewed
                      ],
                    ),
                  ),

                  vertSpacer(20),
// other section
                  font4("Categories", 16, color: activeBlue),
                  vertSpacer(10),

                  SizedBox(
                    height: 35,
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: iconGrey.withOpacity(0.3)),
                            onPressed: () {},
                            child: font4("All Courses", 15)),
                        TextButton(
                            onPressed: () {}, child: font4("Design", 15)),
                        TextButton(
                            onPressed: () {}, child: font4("Development", 15)),
                        TextButton(
                            onPressed: () {}, child: font4("Programming", 15))
                      ],
                    ),
                  ),

                  vertSpacer(10),
// other section
                  font4("Features", 16, color: activeBlue),
                  vertSpacer(20),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        gridCard(cvimg, "CV", cvcolor),
                        gridCard(donationimg, "Donations", donationcolor),
                        gridCard(jobimg, "Find job", jobcolor),
                        gridCard(communityimg, "Community", communitycolor)
                      ],
                    ),
                  ),

// ************************************
// add content here
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget gridCard(String img, String title, Color color) => InkWell(
        onTap: () => {},
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2,
          padding: const EdgeInsets.only(bottom: 7),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(img),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: font4(title, 14),
          ),
        ),
      );
}

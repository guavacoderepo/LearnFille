import 'package:flutter/material.dart';
import 'package:learnfille/constants/colors.dart';
import 'package:learnfille/constants/padding.dart';
import 'package:learnfille/constants/spacer.dart';
import 'package:learnfille/utils/appbars.dart';
import 'package:learnfille/utils/text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: otherAppbar("Profile"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: bodyPadding, right: bodyPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
// image and username section

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
// profile picture section
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: iconGrey.withOpacity(0.1),
                        radius: 60,
                        backgroundImage: const NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzmlfDMANvrYSMZw1Zj3oFQLjqrO-T2dK6nw&usqp=CAU",
                        ),
                      ),

//  add camera icon for changing image
                      Positioned(
                        top: 70,
                        left: 90,
                        child: CircleAvatar(
                          backgroundColor: lightColor,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              color: darkColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
// name and email section

                  Column(
                    children: [
                      font3("Grace Jane", 24),
                      font4("grace1122@gmail.com", 10),
                      TextButton(
                          style:
                              TextButton.styleFrom(backgroundColor: activeBlue),
                          onPressed: () {},
                          child: font4("Edit Profile", 16, color: lightColor))
                    ],
                  ),
                  horizSpacer(10)
                ],
              ),
// become a tutor
              vertSpacer(18),
              font4("Become a tutor", 20, color: activeBlue),
// preference section
              vertSpacer(18),
              font4("Prefrences", 16, color: iconGrey),

              ListTile(
                title: font4("Downloaded courses", 15),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: font4("Downloaded options", 15),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: font4("Playback options", 15),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: font4("Languages", 15),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: font4("Location", 15),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),

              vertSpacer(5),
              font4("Support", 16, color: iconGrey),

              ListTile(
                title: font4("Share LearnFille app", 15),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: font4("About LearnFille", 15),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: font4("Help & support", 15),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: font4("FAQs", 15),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              ListTile(
                title: font4("Sign out", 15, color: activeBlue),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),

// add contents here
            ],
          ),
        ),
      ),
    );
  }
}

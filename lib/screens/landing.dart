import 'package:flutter/material.dart';
import 'package:learnfille/screens/dashboard.dart';
import 'package:learnfille/screens/learning.dart';
import 'package:learnfille/screens/profile.dart';
import '../constants/colors.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Widget dashboard = Dashboard();
  Widget learn = LearningPage();
  Widget setting = Dashboard();
  Widget profile = ProfilePage();

  int _currentIndex = 0;

  List<Widget>? pages;
  @override
  void initState() {
    pages = [dashboard, learn, setting, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: IndexedStack(
        index: _currentIndex,
        children: pages!,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: iconGrey,
        selectedItemColor: darkColor,
        unselectedIconTheme: const IconThemeData(size: 28),
        selectedIconTheme: const IconThemeData(size: 35),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.edit_note_outlined), label: "Learn"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: "Profile")
        ],
        onTap: (value) => setState(() => _currentIndex = value),
      ),
    );
  }
}

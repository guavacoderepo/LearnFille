import 'package:flutter/material.dart';
import 'package:learnfille/screens/dashboard.dart';
import 'package:learnfille/screens/landing.dart';
import 'package:learnfille/screens/profile.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "roboto"),
        home: LandingPage()
      ),
    );

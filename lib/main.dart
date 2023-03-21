import 'package:flutter/material.dart';
import 'package:learnfille/screens/landing.dart';


void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "roboto"),
        home: LandingPage()
      ),
    );

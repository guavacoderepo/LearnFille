import 'package:flutter/material.dart';
import 'package:learnfille/screens/login.dart';
import 'package:learnfille/screens/onBoarding.dart';
import 'package:learnfille/screens/register.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "roboto"),
        home: OnBoarding()
      ),
    );

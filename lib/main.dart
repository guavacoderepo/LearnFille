import 'package:flutter/material.dart';
import 'package:learnfille/screens/dashboard.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "roboto"),
        home: Dashboard(),
      ),
    );

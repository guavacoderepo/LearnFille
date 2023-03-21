import 'package:flutter/material.dart';
import 'package:learnfille/constants/colors.dart';

TextField inputField(TextEditingController ctr, {bool obs = false}) =>
    TextField(
      decoration: InputDecoration(
        fillColor: inputGrey,
        contentPadding: EdgeInsets.all(16),
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: inputGrey),
            borderRadius: BorderRadius.circular(25)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: activeBlue),
            borderRadius: BorderRadius.circular(25)),
      ),
      controller: ctr,
      obscureText: obs,
    );

TextField searchbox(TextEditingController ctr) => TextField(
      decoration: InputDecoration(
        fillColor: lightColor,
        contentPadding: EdgeInsets.only(left: 13, top: 8, bottom: 8, right: 10),
        filled: true,
        hintText: "Search for a course...",
        isCollapsed: true,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: inputGrey),
            borderRadius: BorderRadius.circular(25)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: activeBlue),
            borderRadius: BorderRadius.circular(25)),
      ),
      controller: ctr,
    );

import 'package:flutter/material.dart';
import 'package:learnfille/constants/colors.dart';

// no alignment
Text font1(text, double size, {Color color = darkColor}) => Text(text,
    style: TextStyle(
        fontFamily: "roboto",
        fontWeight: FontWeight.w100,
        fontSize: size,
        color: color));

Text font2(text, double size, {Color color = darkColor}) => Text(text,
    style: TextStyle(
        fontFamily: "roboto",
        fontWeight: FontWeight.w200,
        fontSize: size,
        color: color));

Text font3(text, double size, {Color color = darkColor}) => Text(text,
    style: TextStyle(
        fontFamily: "roboto",
        fontWeight: FontWeight.w300,
        fontSize: size,
        color: color));

Text font4(text, double size, {Color color = darkColor}) => Text(text,
    style: TextStyle(
        fontFamily: "roboto",
        fontWeight: FontWeight.w400,
        fontSize: size,
        color: color));

Text font5(text, double size, {Color color = darkColor}) => Text(text,
    style: TextStyle(
        fontFamily: "roboto",
        fontWeight: FontWeight.w500,
        fontSize: size,
        color: color));

Text font6(text, double size, {Color color = darkColor}) => Text(text,
    style: TextStyle(
        fontFamily: "roboto",
        fontWeight: FontWeight.w600,
        fontSize: size,
        color: color));

Text font7(text, double size, {Color color = darkColor}) => Text(text,
    style: TextStyle(
        fontFamily: "roboto",
        fontWeight: FontWeight.w700,
        fontSize: size,
        color: color));

Text font8(text, double size, {Color color = darkColor}) => Text(text,
    style: TextStyle(
        fontFamily: "roboto",
        fontWeight: FontWeight.w800,
        fontSize: size,
        color: color));

Text font9(text, double size, {Color color = darkColor}) => Text(text,
    style: TextStyle(
        fontFamily: "roboto",
        fontWeight: FontWeight.w900,
        fontSize: size,
        color: color));

// center alignment custom
Text alignmentText4(text, double size,
        {Color color = darkColor, TextAlign align = TextAlign.center}) =>
    Text(text,
        textAlign: align,
        style: TextStyle(
            fontFamily: "roboto",
            fontWeight: FontWeight.w400,
            fontSize: size,
            color: color));

// constant
TextStyle style(FontWeight weight, double size, {Color color = darkColor}) =>
    TextStyle(
        fontFamily: "roboto", fontWeight: weight, fontSize: size, color: color);

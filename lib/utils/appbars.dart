import 'package:flutter/material.dart';
import 'package:learnfille/constants/colors.dart';
import 'package:learnfille/utils/text.dart';

import '../constants/images.dart';

AppBar tranperantAppbar() => AppBar(
      backgroundColor: transparent,
      elevation: 0,
    );

AppBar dashbordAppbar() => AppBar(
      backgroundColor: transparent,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Image.asset(logoImg),
      ),
      title: font5("Hi, Grace", 15),
    );

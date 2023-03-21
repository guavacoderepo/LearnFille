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
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25, top: 10),
          child: Badge(
            backgroundColor: transparent,
            label: CircleAvatar(
              backgroundColor: greyColor,
              child: font6("3", 12, color: logoTextColor),
            ),
            child: const Icon(
              Icons.shopping_cart_checkout_outlined,
              color: darkColor,
            ),
          ),
        ),
      ],
    );

AppBar otherAppbar(title) => AppBar(
      backgroundColor: transparent,
      elevation: 0,
      title: font4(title, 17),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25, top: 10),
          child: Badge(
            backgroundColor: transparent,
            label: CircleAvatar(
              backgroundColor: greyColor,
              child: font6("3", 12, color: lightColor),
            ),
            child: const Icon(
              Icons.shopping_cart_checkout_outlined,
              color: darkColor,
            ),
          ),
        ),
      ],
    );

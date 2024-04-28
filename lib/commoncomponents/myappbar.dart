import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:simple_gradient_text/simple_gradient_text.dart';

PreferredSizeWidget Myappbar() {
  return AppBar(
    title: GradientText(
      "Hi, Sarah!",
      colors: [
        Color.fromRGBO(200, 7, 65, 1),
        Color.fromRGBO(200, 7, 65, 1),
        Color.fromRGBO(251, 181, 1, 1),
      ],
      style: TextStyle(
        fontFamily: "inter",
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    // backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarOpacity: 0,
    // foregroundColor: Color.fromRGBO(255, 255, 255, 0),
    backgroundColor: Color.fromRGBO(40, 40, 40, 1),
    // shadowColor: Color.fromRGBO(255, 255, 255, 0),
    // shadowColor: Colors.transparent,
    // surfaceTintColor: Color.fromRGBO(255, 255, 255, 0),
    surfaceTintColor: Color.fromRGBO(40, 40, 40, 0),
    leading: Container(
      height: 30.0,
      padding: EdgeInsets.only(bottom: 3.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 1.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 2.0),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1.0,
              spreadRadius: 1.0,
              offset: Offset(0.0, 2.0),
            ),
          ],
          image: DecorationImage(
            image: AssetImage("assets/icons/avatar2.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
    leadingWidth: 36.0,
    titleSpacing: 13.0,
    toolbarHeight: 33.0,
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/svgicons/cart.svg',
          semanticsLabel: 'Shopping Bag',
        ),
      )
    ],
  );
}

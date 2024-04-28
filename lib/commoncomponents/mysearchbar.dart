import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";

Widget Myserchbar() {
  return Container(
    padding: EdgeInsets.only(left: 13, right: 13),
    height: 33,
    width: double.maxFinite,
    // color: Color.fromRGBO(75, 75, 75, 1),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color.fromRGBO(75, 75, 75, 1),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.search, color: Colors.grey),
        SizedBox(
          width: 12.0,
        ),
        Expanded(
          child: TextField(
            // textAlign: TextAlign.center,
            decoration: InputDecoration.collapsed(
                hintText: 'Search for book, authors...',
                hintStyle: TextStyle(
                  fontFamily: 'inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
            onChanged: (value) {},
          ),
        ),
        InkWell(
          child: SvgPicture.asset(
            'assets/svgicons/books.svg',
            semanticsLabel: 'Shopping Bag',
          ),
          onTap: () {},
        )
      ],
    ),
  );
}

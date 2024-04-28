import 'package:flutter/material.dart';

Widget Marketbanner() {
  return Container(
    height: 100,
    width: double.maxFinite,
    padding: EdgeInsets.only(top: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(11),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 1.8,
          spreadRadius: 1.8,
          offset: Offset(0.0, 4.0),
        ),
      ],
      image: DecorationImage(
        image: AssetImage("assets/images/banner.jpeg"),
        fit: BoxFit.cover,
      ),
    ),
    child: Container(
      height: 49,
      width: 252,
      child: Column(
        children: [
          Text(
            "Shop your bookish accessories at amazing prices.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Container(
            height: 16,
            width: 66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                backgroundColor: Color.fromRGBO(
                    223, 196, 145, 1), // background color of button
                side: BorderSide(
                  width: 1.0,
                  color: Color.fromRGBO(200, 18, 67, 1),
                ), // border color and width
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0), // border radius
                ),
              ),
              child: Text(
                'Shop now',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 6,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

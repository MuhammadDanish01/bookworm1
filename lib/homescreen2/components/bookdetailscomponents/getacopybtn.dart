import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

Widget getcopybtn(context) {
  return Container(
    // width: 139,
    width: MediaQuery.of(context).size.width * 0.35,
    height: 30,
    // color:
    //     Color.fromRGBO(4, 18, 64, 1),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: Color(0xFFC80741),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.25),
          // color: Colors.amber,
          blurRadius: 1.0,
          spreadRadius: 1.0,
          offset: Offset(0.0, 2.0),
        ),
      ],
    ),
    child: InkWell(
      onTap: () {
        // Handle the tap event here
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'get a copy',
            style: TextStyle(
              color: Color.fromRGBO(198, 198, 198, 1),
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
              fontSize: 10,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          SvgPicture.asset(
            'assets/svgicons/getacopybigicon.svg',
            semanticsLabel: 'copy',
          ),
        ],
      ),
    ),
  );
}

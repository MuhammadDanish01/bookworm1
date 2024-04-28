import "package:bookworm/homescreen2/components/bookdetailscomponents/getacopybtn.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

Widget expandedbtns(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      getcopybtn(context),
      Container(
        // width: 139,
        width: MediaQuery.of(context).size.width * 0.35,
        height: 30,
        // color:
        //     Color.fromRGBO(4, 18, 64, 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Color.fromRGBO(249, 201, 49, 1),
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
                'Add to bookshelf',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                'assets/svgicons/bookshelfbtnicon.svg',
                semanticsLabel: 'copy',
              ),
              // SizedBox(
              //   width: 20,
              // ),
            ],
          ),
        ),
      ),
      Container(
        width: 30,
        height: 30,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            // color: Color(0xFFC80741),
            border: Border.all(color: Colors.white, width: 0.7)),
        child: InkWell(
          onTap: () {
            // Handle the tap event here
          },
          child: SvgPicture.asset(
            'assets/svgicons/heart.svg',
            semanticsLabel: 'copy',
          ),
        ),
      ),
    ],
  );
}

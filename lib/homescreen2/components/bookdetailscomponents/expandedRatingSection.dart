import 'package:bookworm/homescreen2/components/bookdetailscomponents/comentcontainersec.dart';
import 'package:bookworm/homescreen2/components/bookdetailscomponents/ratingbarssection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget expandedratings() {
  return Column(
    children: [
      // Container(
      //   height: 40,
      //   // color:
      //   //     Color.fromRGBO(4, 18, 64, 1),
      //   decoration: BoxDecoration(
      //     border: Border(
      //       bottom: BorderSide(
      //         color: Colors.white30,
      //         width: 0.5,
      //       ),
      //     ),
      //     // color: Color(0xFFC80741),
      //   ),
      //   child: InkWell(
      //     onTap: () {
      //       // Handle the tap event here
      //     },
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text(
      //           'Reviews',
      //           style: TextStyle(
      //             color: Color.fromRGBO(198, 198, 198, 1),
      //             fontFamily: 'poppins',
      //             fontWeight: FontWeight.w400,
      //             fontSize: 11,
      //           ),
      //         ),
      //         SvgPicture.asset(
      //           'assets/svgicons/viewall.svg',
      //           semanticsLabel: 'copy',
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      SizedBox(
        height: 15,
      ),
      ratingbars(),
      SizedBox(
        height: 8,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Rate:',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          RatingBar(
            initialRating: 0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 17.0,
            ratingWidget: RatingWidget(
              full: const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              half: const Icon(
                Icons.star_half,
                color: Colors.yellow,
              ),
              empty: const Icon(
                Icons.star_border,
                color: Colors.yellow,
              ),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
        ],
      ),
      SizedBox(
        height: 12,
      ),
      Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(43, 43, 43, 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              // color: Colors.amber,
              blurRadius: 4.0,
              spreadRadius: 4.0,
              offset: Offset(0.0, 4.0),
            ),
          ],
        ),
        child: commentcontainer(),
      ),
      SizedBox(height: 19),
      SvgPicture.asset(
        'assets/svgicons/swipe.svg',
        semanticsLabel: 'copy',
      ),
    ],
  );
}

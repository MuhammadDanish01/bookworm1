import 'package:bookworm/homescreen2/components/bookdetailscomponents/itemdetailscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget expandedcontainer(yourcontext, index, item) {
  return Container(
    width: 195,
    height: 128,
    alignment: Alignment.topLeft,
    padding: EdgeInsets.all(7),
    color: Color.fromRGBO(28, 41, 82, 1),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${item['title']}',
          style: TextStyle(
            color: Color.fromRGBO(198, 198, 198, 1),
            fontSize: 9,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          '${item['author']}',
          style: TextStyle(
            color: Color.fromRGBO(110, 110, 110, 1),
            fontSize: 7,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '${item['detail']}',
          style: TextStyle(
            color: Color.fromRGBO(198, 198, 198, 1),
            fontSize: 6,
            fontWeight: FontWeight.w400,
          ),
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          maxLines: 5,
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    '${item['ratings']}',
                    style: TextStyle(
                      color: Color.fromRGBO(198, 198, 198, 1),
                      fontSize: 7,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(width: 2),
                  RatingBar.builder(
                    initialRating: item['ratings'],
                    itemSize: 6,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: 57,
              height: 14,
              // color:
              //     Color.fromRGBO(4, 18, 64, 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: Color.fromRGBO(4, 18, 64, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
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
                  Navigator.push(
                      yourcontext,
                      MaterialPageRoute(
                          builder: (_) => Itemdetailscreen(index: index)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'get a copy',
                      style: TextStyle(
                        color: Color.fromRGBO(198, 198, 198, 1),
                        fontFamily: 'poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 7,
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset(
                      'assets/svgicons/copyicon.svg',
                      semanticsLabel: 'copy',
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

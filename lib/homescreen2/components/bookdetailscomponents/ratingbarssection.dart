import "package:flutter/material.dart";
import "package:flutter_rating_bar/flutter_rating_bar.dart";

List<int> itemCounts = [50, 100, 150, 200, 250];
Widget ratingbars() {
  return Row(
    children: [
      SizedBox(
        width: 25,
      ),
      Expanded(
        child: Row(
          children: [
            Text(
              '4.7',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '  out of 5',
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: Column(
          children: [
            Ratingcontainer(5.0, 5, 4.2, 0.5),
            SizedBox(height: 2),
            Ratingcontainer(4.0, 4, 2.2, 3.5),
            SizedBox(height: 2),
            Ratingcontainer(3.0, 3, 3.8, 6.5),
            SizedBox(height: 2),
            Ratingcontainer(2.0, 2, 1.5, 9.5),
            SizedBox(height: 2),
            Ratingcontainer(1.0, 1, 0.2, 12.5),
          ],
        ),
      ),
    ],
  );
}

Widget Ratingcontainer(
    double initrate, int itemcount, double barvalue, double boxvalue) {
  return Container(
    child: Row(
      children: [
        SizedBox(
          width: boxvalue,
        ),
        RatingBar.builder(
          initialRating: initrate,
          // minRating: 1,
          direction: Axis.horizontal,
          // allowHalfRating: true,
          itemCount: itemcount,
          itemSize: 3,
          // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(10),
            value: barvalue / 5.0,
            backgroundColor: Color.fromRGBO(57, 57, 57, 1),
            valueColor:
                AlwaysStoppedAnimation<Color>(Color.fromRGBO(98, 98, 98, 1)),
          ),
        ),
        SizedBox(
          width: 25,
        ),
      ],
    ),
  );
}

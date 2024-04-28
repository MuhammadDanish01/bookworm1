import "package:flutter/material.dart";
import "package:flutter_rating_bar/flutter_rating_bar.dart";

Widget commentcontainer() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.1),
            child: Container(
                height: 33,
                width: 33,
                color: Colors.transparent,
                child: Image.asset("assets/icons/avatar2.png")),
          ),
          Container(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              'Username',
              style: TextStyle(
                color: Color.fromRGBO(198, 198, 198, 1),
                fontFamily: 'poppins',
                fontWeight: FontWeight.w400,
                fontSize: 10,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(width: 80),
          Text(
            '2 days ago',
            style: TextStyle(
              color: Color.fromRGBO(133, 133, 133, 1),
              fontFamily: 'poppins',
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      SizedBox(height: 7),
      Row(
        children: [
          Text(
            'Rating: ',
            style: TextStyle(
              color: Color.fromRGBO(198, 198, 198, 1),
              fontFamily: 'poppins',
              fontWeight: FontWeight.w300,
              fontSize: 9,
            ),
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 6,
            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
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
      SizedBox(height: 12),

      // Divider(height: 10, color: Colors.grey),
      Text(
        '${comment}',
        style: TextStyle(
          color: Color.fromRGBO(198, 198, 198, 1),
          fontFamily: 'poppins',
          fontWeight: FontWeight.w300,
          fontSize: 9,
        ),
      ),
    ],
  );
}

const comment =
    "Bookworm is a game-changer! The personalized recommendations are scarily accurate, and the waitlist feature saved me from FOMO. The marketplace is a hidden gem for book accessories.";

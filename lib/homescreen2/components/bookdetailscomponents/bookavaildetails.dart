import 'package:flutter/material.dart';

Widget bookavaildetail() {
  return Row(
    children: [
      // SizedBox(height: 8.0),
      // // Image.asset('path/to/book/cover/image.png', width: 100, height: 150),
      // SizedBox(width: 8.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Details',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'No. of copies available: ',
            style: TextStyle(fontSize: 7.0),
          ),
          SizedBox(height: 4.0),
          Text(
            'First published: ',
            style: TextStyle(fontSize: 7.0),
          ),
          SizedBox(height: 4.0),
          Text(
            'Format: ',
            style: TextStyle(fontSize: 7.0),
          ),
          SizedBox(height: 4.0),
          Text(
            'Genre: ',
            style: TextStyle(fontSize: 7.0),
          ),
        ],
      ),
      SizedBox(
        width: 15,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                '',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '5',
                style: TextStyle(fontSize: 7.0),
              ),
              SizedBox(height: 4.0),
              Text(
                'June 15, 2021',
                style: TextStyle(fontSize: 7.0),
              ),
              SizedBox(height: 4.0),
              Text(
                'Paperback',
                style: TextStyle(fontSize: 7.0),
              ),
              SizedBox(height: 4.0),
              Container(
                width: 150,
                child: Text(
                  'Romance, Fantasy, Historical Fiction and Romance, Adult',
                  style: TextStyle(fontSize: 7.0),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

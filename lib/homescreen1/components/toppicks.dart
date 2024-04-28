import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Map<String, dynamic>> data = [
  {
    'title': 'The Housemaid',
    'author': 'Freida Mcfadden',
    'image': 'assets/images/bookcovers/1.png',
  },
  {
    'title': 'Shadow and Bone',
    'author': 'Leigh Bardugo',
    'image': 'assets/images/bookcovers/2.png',
  },
  {
    'title': 'Beach Read',
    'author': 'Emily Henry',
    'image': 'assets/images/bookcovers/3.jpeg',
  },
  {
    'title': 'The Paris Apartment',
    'author': 'Lucy Foley',
    'image': 'assets/images/bookcovers/4.png',
  },
  // Add more data here
];

Widget Toppickssection() {
  return Container(
    height: 203,
    width: double.infinity,
    child: Column(
      children: [
        Container(
          width: 319,
          height: 18,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Picks for you",
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              InkWell(
                onTap: () {
                  // Handle the tap event here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'View all',
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
                      'assets/svgicons/rightarrow.svg',
                      semanticsLabel: 'arrow',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: data.map((item) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 0),
                    surfaceTintColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Material(
                          elevation: 10, // Add elevation here
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(3),
                            child: Image.asset(
                              item['image'],
                              fit: BoxFit.cover,
                              height: 128,
                              // width: 95,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '${item['title']}',
                          style: TextStyle(
                            color: Color.fromRGBO(198, 198, 198, 1),
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          '${item['author']}',
                          style: TextStyle(
                            color: Color.fromRGBO(110, 110, 110, 1),
                            fontSize: 7,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        )
      ],
    ),
  );
}

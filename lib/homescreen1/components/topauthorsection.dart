import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<Map<String, dynamic>> data = [
  {
    'author': 'collen hoover',
    'image': 'assets/images/authorspics/1.jpeg',
  },
  {
    'author': 'lucy score',
    'image': 'assets/images/authorspics/2.jpeg',
  },
  {
    'author': 'sarah j maas',
    'image': 'assets/images/authorspics/3.jpeg',
  },
  {
    'author': 'emily henry',
    'image': 'assets/images/authorspics/4.png',
  },

  {
    'author': 'elsie silver',
    'image': 'assets/images/authorspics/5.png',
  },
  {
    'author': 'lucy score',
    'image': 'assets/images/authorspics/2.jpeg',
  }
  // Add more data here
];
// double screenWidth = MediaQuery.of(yourContext).size.width;

Widget Topauthorsection(yourContext) {
  return Container(
    height: 109,
    // width: double.infinity,
    padding: EdgeInsets.only(bottom: 2),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(11),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.withOpacity(0.1),
      //     // color: Colors.amber,
      //     blurRadius: 1,
      //     spreadRadius: 1,
      //     offset: Offset(0.0, 1.0),
      //   ),
      // ],
    ),
    child: Column(
      children: [
        Container(
          width: 319,
          height: 18,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Authors",
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
        Stack(
          children: [
            Positioned(
              top: 25,
              bottom: 1,
              child: Container(
                height: 55,
                // width: 330,
                width: MediaQuery.of(yourContext).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Color.fromRGBO(44, 44, 44, 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      // color: Colors.amber,
                      blurRadius: 1.8,
                      spreadRadius: 1.8,
                      offset: Offset(0.0, 4.0),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: data.map((item) {
                  return Container(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: Column(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Material(
                                borderRadius: BorderRadius.circular(50),
                                elevation: 10, // Add elevation here
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    item['image'],
                                    fit: BoxFit.cover,
                                    height: 45,
                                    width: 45,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                '${item['author']}',
                                style: TextStyle(
                                  color: Color.fromRGBO(198, 198, 198, 1),
                                  fontSize: 6,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
        // SizedBox(
        //   height: 5,
        // )
      ],
    ),
  );
}

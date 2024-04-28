import 'package:bookworm/dummydata/data.dart';
import 'package:bookworm/homescreen2/components/toppickscomponents/expandedcontainer.dart';
import 'package:bookworm/homescreen2/components/bookdetailscomponents/itemdetailscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class topPickSection extends StatefulWidget {
  const topPickSection({super.key});
  @override
  State<topPickSection> createState() => _topPickSectionState();
}

class _topPickSectionState extends State<topPickSection> {
  bool isOpen = false;
  bool isDetailsVisible = false;
  int? selectedIndex = -1;
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 203,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top picks for you",
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
                      elevation: 5,
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
                          // InkWell(
                          //   onTap: () {
                          //     // Toggle the isOpen state when the user taps on the GestureDetector
                          //     setState(() {
                          //       isOpen = !isOpen;
                          //     });
                          //   },
                          // child:
                          Material(
                            elevation: 5, // Add elevation here
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Toggle the isOpen state when the user taps on the GestureDetector
                                    setState(() {
                                      isOpen = !isOpen;
                                      if (selectedIndex == -1) {
                                        selectedIndex = data.indexOf(item);
                                      } else {
                                        selectedIndex = -1;
                                      }
                                      print("object");
                                    });
                                  },
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Itemdetailscreen(
                                                index: data.indexOf(item))));
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(
                                        milliseconds:
                                            200), // Set the duration of the animation
                                    width: selectedIndex == data.indexOf(item)
                                        ? 200
                                        : 0, // Set the width of the container based on the isOpen state
                                    curve: Curves
                                        .easeInOut, // Set the curve of the animation
                                    child: Opacity(
                                      opacity:
                                          selectedIndex == data.indexOf(item)
                                              ? 1
                                              : 0,
                                      child: expandedcontainer(
                                          context, data.indexOf(item), item),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: 80,
                            child: Text(
                              '${item['title']}',
                              style: TextStyle(
                                color: Color.fromRGBO(198, 198, 198, 1),
                                fontSize: 9,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
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
}

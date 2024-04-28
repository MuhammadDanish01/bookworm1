import 'package:bookworm/homescreen2/components/bookdetailscomponents/bookavaildetails.dart';
import 'package:bookworm/homescreen2/components/bookdetailscomponents/closedbottombuttons.dart';
import 'package:bookworm/homescreen2/components/bookdetailscomponents/expandedRatingSection.dart';
import 'package:bookworm/homescreen2/components/bookdetailscomponents/expandedbtmbtns.dart';
import 'package:bookworm/homescreen2/components/bookdetailscomponents/expandeddiscussion.dart';
import 'package:bookworm/homescreen2/components/bookdetailscomponents/getacopybtn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../dummydata/data.dart';

class Itemdetailscreen extends StatefulWidget {
  final int index;
  const Itemdetailscreen({super.key, required this.index});

  @override
  State<Itemdetailscreen> createState() => _ItemdetailscreenState();
}

class _ItemdetailscreenState extends State<Itemdetailscreen> {
  Map<String, dynamic>? item;
  bool _showReviews = false;
  bool _showdiscuss = false;

  @override
  void initState() {
    super.initState();
    print(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    item = data[widget.index];
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white),
        // elevation: 0,
        // toolbarOpacity: 0,
        backgroundColor: Color.fromRGBO(40, 40, 40, 0),
        surfaceTintColor: Color.fromRGBO(40, 40, 40, 0),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.1),
            child: Container(
                height: 33,
                width: 33,
                color: Colors.transparent,
                child: Image.asset("assets/icons/avatar2.png")),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 20),
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11),
                    color: Color.fromRGBO(44, 44, 44, 1),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: Image.asset(
                      item?['image'],
                      fit: BoxFit.cover,
                      height: 214,
                      // width: 95,
                    ),
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Text(
                  '${item?['title']}',
                  style: TextStyle(
                    color: Color.fromRGBO(198, 198, 198, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'by ${item?['author']}',
                  style: TextStyle(
                    color: Color.fromRGBO(110, 110, 110, 1),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                RatingBar.builder(
                  initialRating: item?['ratings'],
                  itemSize: 11,
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
                SizedBox(
                  height: 24,
                ),
                if (_showReviews || _showdiscuss)
                  Container()
                else
                  getcopybtn(context),
                SizedBox(
                  height: 26,
                ),
                Text(
                  '${item?['detail']} ',
                  style: TextStyle(
                    color: Color.fromRGBO(198, 198, 198, 1),
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                  ),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  maxLines: 3,
                ),
                SizedBox(
                  height: 26,
                ),
                Container(
                  // width: 284,
                  height: 129,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(57, 60, 99, 1),
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
                  child: bookavaildetail(),
                ),
                SizedBox(
                  height: 29,
                ),
                Container(
                  // width: 284,
                  height: 40,
                  // color:
                  //     Color.fromRGBO(4, 18, 64, 1),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white30,
                        width: 0.5,
                      ),
                    ),
                    // color: Color(0xFFC80741),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Handle the tap event here
                      setState(() {
                        _showReviews = true;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reviews',
                          style: TextStyle(
                            color: Color.fromRGBO(198, 198, 198, 1),
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                          ),
                        ),
                        if (_showReviews)
                          SvgPicture.asset(
                            'assets/svgicons/viewall.svg',
                            semanticsLabel: 'copy',
                          )
                        else
                          SvgPicture.asset(
                            'assets/svgicons/dropdownicon.svg',
                            semanticsLabel: 'copy',
                          ),
                      ],
                    ),
                  ),
                ),
                if (_showReviews)
                  Container(
                    child: expandedratings(),
                  )
                else
                  Container(),
                Container(
                  // width: 284,
                  height: 40,
                  // color:
                  //     Color.fromRGBO(4, 18, 64, 1),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white30,
                        width: 0.5,
                      ),
                    ),
                    // color: Color(0xFFC80741),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Handle the tap event here
                      setState(() {
                        _showdiscuss = true;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discussion',
                          style: TextStyle(
                            color: Color.fromRGBO(198, 198, 198, 1),
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                          ),
                        ),
                        if (_showdiscuss)
                          SvgPicture.asset(
                            'assets/svgicons/viewall.svg',
                            semanticsLabel: 'copy',
                          )
                        else
                          SvgPicture.asset(
                            'assets/svgicons/dropdownicon.svg',
                            semanticsLabel: 'copy',
                          ),
                      ],
                    ),
                  ),
                ),
                if (_showdiscuss) ExpandedDiscussionWidget() else Container(),
                SizedBox(
                  height: 47,
                ),
                if (_showReviews || _showdiscuss)
                  expandedbtns(context)
                else
                  Closedbtns(context),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// There's no need for the `index` mixin here.

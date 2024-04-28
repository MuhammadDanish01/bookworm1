import 'package:bookworm/bookQuestionaire/bookQuestionaire2.dart';
import 'package:bookworm/bookQuestionaire/bookquestionaire1.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

enum pages { bookquestinaire1, bookquestinaire2 }

Map<pages, Widget> skyColors = <pages, Widget>{
  pages.bookquestinaire1: bookQuestionaire1(),
  pages.bookquestinaire2: bookQuestionaire2(),
};

class bookQuestionaire extends StatefulWidget {
  const bookQuestionaire({super.key});

  @override
  State<bookQuestionaire> createState() => _bookQuestionaireState();
}

class _bookQuestionaireState extends State<bookQuestionaire>
    with SingleTickerProviderStateMixin {
  pages _selectedSegment = pages.bookquestinaire1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      top: true,
      bottom: true,
      child: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.62,
            child: SvgPicture.asset("assets/svgicons/cornercircles.svg"),
            // left: 250,
          ),
          Positioned(
            child: SingleChildScrollView(
              child: Center(
                  child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                      padding: const EdgeInsets.only(top: 21),
                      child: Column(
                        children: [
                          buildText("Is your book an academic book?", "poppins",
                              10, Color.fromARGB(220, 190, 190, 187)),
                          SizedBox(height: 23),
                          Material(
                            elevation: 3,
                            child: CupertinoSlidingSegmentedControl<pages>(
                              padding: EdgeInsets.only(
                                top: 5,
                                left: 8,
                                right: 8,
                                bottom: 9,
                              ),
                              backgroundColor: Color(0xFFC80741),
                              thumbColor: Color.fromRGBO(225, 193, 7, 1),
                              // This represents the currently selected segmented control.
                              groupValue: _selectedSegment,
                              // Callback that sets the selected segmented control.
                              onValueChanged: (pages? value) {
                                if (value != null) {
                                  setState(() {
                                    _selectedSegment = value;
                                  });
                                }
                              },
                              children: const <pages, Widget>{
                                pages.bookquestinaire1: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    'Yes, it is',
                                    //             child: buildText("Love to re-read", 'inter', 10,
                                    //                 const Color.fromRGBO(47, 47, 47, 1)),
                                    style: TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(47, 47, 47, 1),
                                    ),
                                  ),
                                ),
                                pages.bookquestinaire2: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    'No, its not',
                                    style: TextStyle(
                                      fontFamily: 'inter',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(47, 47, 47, 1),
                                    ),
                                  ),
                                ),
                              },
                            ),
                          ),
                        ],
                      )),
                  // Center(
                  //   child: _selectedSegment
                  // ),
                  skyColors[_selectedSegment] ?? SizedBox.shrink(),
                  SizedBox(height: 40)
                ],
              )),
            ),
          )
        ],
      ),
    ));
  }

  //*************reuseable code******************* */
//******************************************** */
//******************************************** */
  // // text reuseable component
  Widget buildText(
      String text, String fontfamily, double fontSize, Color fontcolour) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontfamily,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: fontcolour,
      ),
    );
  }
}

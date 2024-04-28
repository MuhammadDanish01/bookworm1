import 'package:bookworm/bookQuestionaire/bookQuestionaire.dart';
import 'package:bookworm/homescreen2/homescreen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum Segments { lovetoread, rarelyreread }

Map<Segments, String> skyColors = <Segments, String>{
  Segments.lovetoread: "Love to read",
  Segments.rarelyreread: "Rarely re-read",
};

class Form2 extends StatefulWidget {
  const Form2({super.key});

  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  final List<String> _selectedChip = [];
  // bool loveToReRead = true;
  // bool rarelyReRead = false;
  Segments _selectedSegment = Segments.lovetoread;

  // double _offset = 0.0;
  // String _label = "Love to re-read";

  // void _onDragUpdate(DragUpdateDetails details) {
  //   setState(() {
  //     _offset += details.delta.dx;
  //     if (_offset < 0) {
  //       _offset = 0;
  //     } else if (_offset > 90) {
  //       _offset = 95;
  //       _label = "Rarely re-read";
  //     } else {
  //       _label = "Love to re-read";
  //     }
  //   });
  // }

  // void _onDragEnd(DragEndDetails details) {
  //   setState(() {
  //     if (_offset > 25) {
  //       _offset = 95;
  //       _label = "Rarely re-read";
  //     } else {
  //       _offset = 0;
  //       _label = "Love to re-read";
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.62,
            child: SvgPicture.asset("assets/svgicons/cornercircles.svg"),
            // left: 250,
          ),
          SingleChildScrollView(
            child: Center(
                child: Column(
              children: [
                SizedBox(height: 30),
                Container(
                    padding: const EdgeInsets.only(top: 22),
                    child: buildText(
                        "FORM", "poppins", 13, const Color(0xFFC80741))),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  margin: const EdgeInsets.only(left: 23, right: 23, top: 25),
                  height: 703,
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 17, top: 39),
                  decoration: BoxDecoration(
                    color: const Color(0xFF282828),
                    borderRadius: BorderRadius.circular(23),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 1,
                        color: Colors.black.withOpacity(.5),
                      )
                    ],
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildText("Step 2: Deeper Preferences", "inter", 13,
                          const Color.fromRGBO(225, 193, 7, 1)),
                      const SizedBox(height: 37),
                      buildText("1- Character Development", "inter", 10,
                          const Color.fromARGB(220, 190, 190, 187)),
                      const SizedBox(height: 14),
                      Wrap(
                        spacing: 9.0,
                        runSpacing: 9.0,
                        children: <Widget>[
                          buildChip('Strong & Dynamic Characyers', 5.1, 140),
                          buildChip(
                              'Relatable & Everyday Characters', 0.9, 140),
                          buildChip(
                              'Antiheroes & Complex Characters', 0 - 2, 140),
                        ],
                      ),
                      const SizedBox(height: 25),
                      buildText("2- Pacing", "inter", 10,
                          const Color.fromARGB(220, 190, 190, 187)),
                      const SizedBox(height: 14),
                      Wrap(spacing: 6.0, runSpacing: 6.0, children: <Widget>[
                        buildChip("Fast-paced", 13.5, 90),
                        buildChip("Slow-paced", 13.2, 90),
                        buildChip("Balanced", 17.8, 90)
                      ]),
                      const SizedBox(height: 25),
                      buildText("3- Preferred Endings", "inter", 10,
                          const Color.fromARGB(220, 190, 190, 187)),
                      const SizedBox(height: 14),
                      Wrap(spacing: 10.0, runSpacing: 10.0, children: <Widget>[
                        buildChip("Happy Endings", 22.5, 120),
                        buildChip("Ambiguous Endings", 12.9, 120),
                        buildChip("Tragic Endings", 22.8, 120),
                      ]),
                      const SizedBox(height: 25),
                      buildText("4- Book Format", "inter", 10,
                          const Color.fromARGB(220, 190, 190, 187)),
                      const SizedBox(height: 14),
                      /*******************************************************/
                      /**************sliding button code start****************/
                      /*******************************************************/
                      CupertinoSlidingSegmentedControl<Segments>(
                        backgroundColor: Color(0xFFC80741),
                        thumbColor: Color.fromRGBO(225, 193, 7, 1),
                        // This represents the currently selected segmented control.
                        groupValue: _selectedSegment,
                        // Callback that sets the selected segmented control.
                        onValueChanged: (Segments? value) {
                          if (value != null) {
                            setState(() {
                              _selectedSegment = value;
                            });
                          }
                        },
                        children: const <Segments, Widget>{
                          Segments.lovetoread: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Love to read',
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
                          Segments.rarelyreread: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Rarely re-read',
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
                      // GestureDetector(
                      //   onHorizontalDragUpdate: _onDragUpdate,
                      //   onHorizontalDragEnd: _onDragEnd,
                      //   child: Container(
                      //     padding: const EdgeInsets.all(6),
                      //     alignment: Alignment.center,
                      //     height: 31,
                      //     width: 216,
                      //     decoration: BoxDecoration(
                      //         color: const Color(0xFFC80741),
                      //         borderRadius: BorderRadius.circular(7),
                      //         boxShadow: const [
                      //           BoxShadow(
                      //               spreadRadius: 1,
                      //               blurRadius: 3,
                      //               offset: Offset(0, 5),
                      //               color: Colors.black38)
                      //         ]),
                      //     child: Stack(
                      //       children: [
                      //         Positioned(
                      //           left: _offset,
                      //           child: Container(
                      //             alignment: Alignment.center,
                      //             decoration: BoxDecoration(
                      //               color: const Color.fromRGBO(225, 193, 7, 1),
                      //               borderRadius: BorderRadius.circular(6),
                      //             ),
                      //             width: 108,
                      //             height: 19,
                      //             child: Center(
                      //                 child: buildText(_label, 'inter', 10,
                      //                     const Color.fromRGBO(47, 47, 47, 1))),
                      //           ),
                      //         ),
                      //         Positioned(
                      //           left: 0,
                      //           child: Container(
                      //             alignment: Alignment.center,
                      //             width: 108,
                      //             height: 19,
                      //             child: buildText("Love to re-read", 'inter', 10,
                      //                 const Color.fromRGBO(47, 47, 47, 1)),
                      //           ),
                      //         ),
                      //         Positioned(
                      //           right: 0.4,
                      //           child: Container(
                      //             alignment: Alignment.center,
                      //             width: 108,
                      //             height: 19,
                      //             child: buildText("Rarely re-read", 'inter', 10,
                      //                 const Color.fromRGBO(47, 47, 47, 1)),
                      //           ),
                      //         )
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      /*******************************************************/
                      /****************sliding button code end****************/
                      /*******************************************************/
                      const SizedBox(height: 25),
                      buildText("5- Preferred Time to Read", "inter", 10,
                          const Color.fromARGB(220, 190, 190, 187)),
                      const SizedBox(height: 14),
                      Wrap(spacing: 10.0, runSpacing: 10.0, children: <Widget>[
                        buildChip("Morning", 14.5, 80),
                        buildChip("Evening", 14.9, 80),
                        buildChip("Night", 18.8, 80),
                      ]),
                      const SizedBox(height: 25),
                      buildText("6- Book Cover Influence", "inter", 10,
                          const Color.fromARGB(220, 190, 190, 187)),
                      const SizedBox(height: 14),
                      Wrap(spacing: 6.0, runSpacing: 6.0, children: <Widget>[
                        buildChip("Influential", 15.8, 90),
                        buildChip("Not Important", 8.9, 90)
                      ]),
                      const SizedBox(height: 37),
                      SizedBox(
                        width: 95,
                        height: 27,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => bookQuestionaire(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(top: 0 - 12),
                              backgroundColor: const Color(0xFFC80741),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7),
                              ),
                            ),
                            child: buildText("Done", "inter", 11,
                                const Color.fromARGB(255, 255, 255, 255))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40)
              ],
            )),
          ),
        ],
      ),
    );
  }

//*************reuseable code******************* */
//******************************************** */
//******************************************** */
  // text reuseable component
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

// chips reuseable components
  Widget buildChip(String value, double sidepad, double width) {
    return InkWell(
      onTap: () {
        if (_selectedChip.contains(value)) {
          // Remove the value from the list
          setState(() {
            _selectedChip.remove(value);
          });
        } else {
          // Add the value to the list
          setState(() {
            _selectedChip.add(value);
          });
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: 24,
        decoration: BoxDecoration(
          border: Border.all(
            color: _selectedChip.contains(value)
                ? const Color(0xFFC80741)
                : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Text(
          value,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

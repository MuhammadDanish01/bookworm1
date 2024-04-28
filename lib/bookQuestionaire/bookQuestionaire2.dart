import 'package:bookworm/bookQuestionaire/button.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class bookQuestionaire2 extends StatefulWidget {
  const bookQuestionaire2({super.key});

  @override
  State<bookQuestionaire2> createState() => _bookQuestionaire2State();
}

class _bookQuestionaire2State extends State<bookQuestionaire2>
    with SingleTickerProviderStateMixin {
  String selectedValue1 = "";
  String selectedValue2 = "";
  String selectedValue3 = "";
  String selectedValue4 = "";
  String selectedValue5 = "";
  String selectedValue6 = "";
  String selectedValue7 = "";
  bool switchValue = false;
  // String selectedValue9 = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Container(
            alignment: AlignmentDirectional.centerStart,
            margin: const EdgeInsets.only(
              left: 23,
              right: 23,
              top: 33,
            ),
            // height: 850,
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
                // const SizedBox(height: 37),
                buildText("1- Spine condition", "poppins", 10,
                    const Color.fromARGB(220, 190, 190, 187)),
                const SizedBox(height: 14),
                Wrap(
                  spacing: 9.0,
                  runSpacing: 9.0,
                  children: <Widget>[
                    buildChip(selectedValue1, 'Tight and intact', 5.1, 110,
                        (selected) {
                      setState(() {
                        selectedValue1 = selected;
                      });
                    }),
                    buildChip(selectedValue1, 'Creased', 0.9, 110, (selected) {
                      setState(() {
                        selectedValue1 = selected;
                      });
                    }),
                    buildChip(selectedValue1, 'Damaged', 0 - 2, 110,
                        (selected) {
                      setState(() {
                        selectedValue1 = selected;
                      });
                    }),
                  ],
                ),
                const SizedBox(height: 25),
                buildText("2- Edition", "inter", 10,
                    const Color.fromARGB(220, 190, 190, 187)),
                const SizedBox(height: 14),
                Wrap(spacing: 9.0, runSpacing: 9.0, children: <Widget>[
                  buildChip(selectedValue2, "First Edition", 15.8, 110,
                      (selected) {
                    setState(() {
                      selectedValue2 = selected;
                    });
                  }),
                  buildChip(selectedValue2, "Later Edition", 8.9, 110,
                      (selected) {
                    setState(() {
                      selectedValue2 = selected;
                    });
                  }),
                  buildChip(selectedValue2, "Special Edition", 8.9, 110,
                      (selected) {
                    setState(() {
                      selectedValue2 = selected;
                    });
                  })
                ]),
                const SizedBox(height: 25),
                buildText("3- Annotations", "Poppins", 10,
                    const Color.fromARGB(220, 190, 190, 187)),
                const SizedBox(height: 14),
                Wrap(spacing: 13.0, runSpacing: 13.0, children: <Widget>[
                  buildChip(selectedValue3, "Yes", 22.5, 73, (selected) {
                    setState(() {
                      selectedValue3 = selected;
                    });
                  }),
                  buildChip(selectedValue3, "No", 12.9, 73, (selected) {
                    setState(() {
                      selectedValue3 = selected;
                    });
                  }),
                ]),
                SizedBox(height: 7),
                if (selectedValue3 == "Yes")
                  Stack(
                    children: [
                      Positioned(
                        child: SvgPicture.asset(
                          "assets/svgicons/inputbox.svg",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                          left: 9,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 18,
                              ),
                              buildText("How many!", "poppins", 8,
                                  Color.fromARGB(220, 190, 190, 187)),
                              SizedBox(height: 10),
                              Container(
                                width: 263,
                                height: 23,
                                child: TextField(
                                  cursorHeight: 20,
                                  cursorColor: Colors.white54,
                                  decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.never,
                                      filled: true,
                                      fillColor: Color.fromRGBO(64, 64, 64, 1),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      label: buildText(
                                          "Write your answer here...",
                                          "poppins",
                                          6,
                                          Color.fromRGBO(144, 144, 144, 1))),
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                const SizedBox(height: 25),
                buildText("4- Book plate", "Poppins", 10,
                    const Color.fromARGB(220, 190, 190, 187)),
                const SizedBox(height: 14),
                Wrap(spacing: 13.0, runSpacing: 13.0, children: <Widget>[
                  buildChip(selectedValue4, "None", 22.5, 73, (selected) {
                    setState(() {
                      selectedValue4 = selected;
                    });
                  }),
                  buildChip(selectedValue4, "Present", 12.9, 73, (selected) {
                    setState(() {
                      selectedValue4 = selected;
                    });
                  }),
                ]),
                const SizedBox(height: 25),
                buildText("5- illustration", "Poppins", 10,
                    const Color.fromARGB(220, 190, 190, 187)),
                const SizedBox(height: 14),
                Wrap(spacing: 9.0, runSpacing: 9.0, children: <Widget>[
                  buildChip(selectedValue5, "Intact", 22.5, 110, (selected) {
                    setState(() {
                      selectedValue5 = selected;
                    });
                  }),
                  buildChip(selectedValue5, "Damaged", 12.9, 110, (selected) {
                    setState(() {
                      selectedValue5 = selected;
                    });
                  }),
                  buildChip(selectedValue5, "Missing", 22.8, 110, (selected) {
                    setState(() {
                      selectedValue5 = selected;
                    });
                  }),
                ]),
                const SizedBox(height: 25),
                buildText("6- Exercises", "Poppins", 10,
                    const Color.fromARGB(220, 190, 190, 187)),
                const SizedBox(height: 14),
                Wrap(spacing: 13.0, runSpacing: 13.0, children: <Widget>[
                  buildChip(selectedValue6, "Solved", 22.5, 73, (selected) {
                    setState(() {
                      selectedValue6 = selected;
                    });
                  }),
                  buildChip(selectedValue6, "Unsolved", 12.9, 73, (selected) {
                    setState(() {
                      selectedValue6 = selected;
                    });
                  }),
                ]),
                const SizedBox(height: 25),
                buildText("7- CD in book?", "Poppins", 10,
                    const Color.fromARGB(220, 190, 190, 187)),
                const SizedBox(height: 14),
                Row(
                  children: [
                    buildText("NO", "Poppins", 11,
                        Color.fromARGB(220, 190, 190, 187)),
                    SizedBox(
                      width: 15,
                    ),
                    Transform.scale(
                      scale: 0.9,
                      child: CupertinoSwitch(
                          value: switchValue,
                          thumbColor: Color.fromRGBO(225, 193, 7, 1),
                          // trackColor: Color(0xFFC80741),
                          activeColor: Color(0xFFC80741),
                          onChanged: (bool? value) {
                            setState(() {
                              switchValue = value ?? false;
                            });
                          }),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    buildText("YES", "Poppins", 11,
                        Color.fromARGB(220, 190, 190, 187)),
                  ],
                ),
                const SizedBox(height: 25),
                buildText("8- Is the book", "Poppins", 10,
                    const Color.fromARGB(220, 190, 190, 187)),
                const SizedBox(height: 14),
                Wrap(spacing: 9.0, runSpacing: 9.0, children: <Widget>[
                  buildChip(selectedValue7, "Colored", 22.5, 110, (selected) {
                    setState(() {
                      selectedValue7 = selected;
                    });
                  }),
                  buildChip(selectedValue7, "black & White", 12.9, 110,
                      (selected) {
                    setState(() {
                      selectedValue7 = selected;
                    });
                  }),
                ]),
                const SizedBox(height: 37),
                // SizedBox(
                //   width: 95,
                //   height: 27,
                //   child: ElevatedButton(
                //       onPressed: () {
                //         // Navigator.of(context).pushReplacement(
                //         //   MaterialPageRoute(
                //         //     builder: (context) => const bookQuestionaire2(),
                //         //   ),
                //         // );
                //       },
                //       style: ElevatedButton.styleFrom(
                //         padding: const EdgeInsets.only(top: 0 - 12),
                //         backgroundColor: const Color(0xFFC80741),
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(7),
                //         ),
                //       ),
                //       child: buildText("Done", "inter", 11,
                //           const Color.fromARGB(255, 255, 255, 255))),
                // ),
                bookQbutton(context),
                SizedBox(height: 50),
              ],
            ),
          ),
          SizedBox(height: 40)
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
  Widget buildChip(
    String selected,
    String value,
    double sidepad,
    double width,
    Function(String) onSelected,
  ) {
    return InkWell(
      onTap: () {
        onSelected(value);
      },
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: 24,
        decoration: BoxDecoration(
          border: Border.all(
            color: selected == value ? const Color(0xFFC80741) : Colors.grey,
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

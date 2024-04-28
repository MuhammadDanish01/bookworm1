import 'package:bookworm/form2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  final List<String> _selectedChip = []; // form 1 chips selection veriable

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
          Positioned(
            child: SingleChildScrollView(
              child: Center(
                  child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                      //main form heading container
                      padding: const EdgeInsets.only(top: 22),
                      child: buildText(
                          "FORM", "poppins", 13, const Color(0xFFC80741))),
                  Container(
                    //chips input field container
                    alignment: AlignmentDirectional.centerStart,
                    margin: const EdgeInsets.only(
                        left: 23,
                        right: 23,
                        top: 25), // set container margin in the screen
                    height: 586,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildText("Step 1: Initial Book Preferences", "inter",
                            13, const Color.fromRGBO(225, 193, 7, 1)),
                        const SizedBox(height: 37),
                        buildText("1- Genre Preference", "inter", 10,
                            const Color.fromARGB(220, 190, 190, 187)),
                        const SizedBox(height: 14),
                        Wrap(
                          //ships first section
                          spacing: 9.0,
                          runSpacing: 9.0,
                          children: <Widget>[
                            buildChip('Mystery/Thriller', 15.4, 110),
                            buildChip('Sci-Fi/Fantasy', 18.7, 110),
                            buildChip('Romance', 27.4, 110),
                            buildChip('Non-Fiction', 22.9, 110),
                            buildChip('Historical Fiction', 13.8, 110),
                          ],
                        ),
                        const SizedBox(height: 25),
                        buildText("2- Book Length", "inter", 10,
                            const Color.fromARGB(220, 190, 190, 187)),
                        const SizedBox(height: 14), // chips second section
                        Wrap(spacing: 6.0, runSpacing: 6.0, children: <Widget>[
                          buildChip("Short Stories", 10.6, 90),
                          buildChip("Novellas", 18.9, 90),
                          buildChip("Standerd Novels", 4.2, 90)
                        ]),
                        const SizedBox(height: 25),
                        buildText("3- Preferred Writing Style", "inter", 10,
                            const Color.fromARGB(220, 190, 190, 187)),
                        const SizedBox(height: 14),
                        Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: <Widget>[
                              buildChip("Descriptive", 29.5, 120),
                              buildChip("Straightforward & Simple", 3.8, 120),
                              buildChip("Experimental & Unique", 7.8, 120),
                              buildChip("Poetic", 37.5, 120)
                            ]),
                        const SizedBox(height: 25),
                        buildText("4- Book Format", "inter", 10,
                            const Color.fromARGB(220, 190, 190, 187)),
                        const SizedBox(height: 14),
                        Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: <Widget>[
                              buildChip("Physical Books", 2.1, 80),
                              buildChip("E-books", 15.3, 80),
                              buildChip("Audiobooks", 8.1, 80)
                            ]),
                        const SizedBox(height: 37),
                        SizedBox(
                          width: 95,
                          height: 27,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const Form2(),
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
                              child: buildText("Next", "inter", 11,
                                  const Color.fromARGB(255, 255, 255, 255))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              )),
            ),
          )
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

// chips reuseable component
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
  // Widget buildChip(String value, double sidepad, double width) {
  //   return Container(
  //     width: width,
  //     height: 24,
  //     decoration: BoxDecoration(
  //       border: Border.all(
  //         color: _selectedChip.contains(value)
  //             ? const Color(0xFFC80741)
  //             : Colors.grey,
  //       ),
  //       borderRadius: BorderRadius.circular(7),
  //     ),
  //     child: RawChip(
  //       padding: EdgeInsets.only(
  //         top: 0 - 10,
  //       ),
  //       label: Text(
  //         value,
  //         textAlign: TextAlign.start,
  //         style: const TextStyle(
  //           fontSize: 8,
  //           fontWeight: FontWeight.w400,
  //         ),
  //       ),
  //       showCheckmark: false,
  //       shape: RoundedRectangleBorder(
  //         side: const BorderSide(color: Colors.transparent),
  //         borderRadius: BorderRadius.circular(7),
  //       ),
  //       selected: _selectedChip.contains(value),
  //       onSelected: (bool selected) {
  //         setState(() {
  //           if (selected) {
  //             _selectedChip.add(value);
  //           } else {
  //             _selectedChip.remove(value);
  //           }
  //         });
  //       },
  //     ),
  //   );
  // }
}

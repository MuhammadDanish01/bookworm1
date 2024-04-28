import 'package:bookworm/homescreen2/homescreen2.dart';
import 'package:flutter/material.dart';

Widget bookQbutton(context) {
  return SizedBox(
    width: 95,
    height: 27,
    child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomeScreen2(),
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
        child: buildText(
            "Done", "inter", 11, const Color.fromARGB(255, 255, 255, 255))),
  );
}

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

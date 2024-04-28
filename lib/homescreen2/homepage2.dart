import 'package:bookworm/commoncomponents/marketplacebanner.dart';
import 'package:bookworm/homescreen2/components/featbookscomponents/featbooksection2.dart';
import 'package:bookworm/homescreen2/components/topauthorscomponents/topauthorsection2.dart';
import 'package:bookworm/homescreen2/components/toppickscomponents/topPickSection.dart';
import 'package:bookworm/homescreen2/components/topuserscoponents/topuserssection2.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Marketbanner(),
          SizedBox(
            height: 42,
          ),
          topPickSection(),
          SizedBox(
            height: 42,
          ),
          Featbooksection2(),
          SizedBox(
            height: 42,
          ),
          Topauthorsection2(context),
          SizedBox(
            height: 42,
          ),
          Topuserssection2(context),
        ],
      ),
    );
  }
}

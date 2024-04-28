import 'package:bookworm/homescreen1/components/featbooksection.dart';
import 'package:bookworm/commoncomponents/marketplacebanner.dart';
import 'package:bookworm/homescreen1/components/topauthorsection.dart';
import 'package:bookworm/homescreen1/components/toppicks.dart';
// import 'package:bookworm/components/topuserssection.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          Toppickssection(),
          SizedBox(
            height: 42,
          ),
          Featbooksection(),
          SizedBox(
            height: 42,
          ),
          Topauthorsection(context),
          // SizedBox(
          //   height: 42,
          // ),
          // Topuserssection(),
        ],
      ),
    );
  }
}

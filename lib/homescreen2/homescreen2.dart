import 'package:bookworm/bookQuestionaire/bookQuestionaire.dart';
import 'package:bookworm/commoncomponents/mysearchbar.dart';
import 'package:bookworm/commoncomponents/myappbar.dart';
import 'package:bookworm/homescreen2/homepage2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    // Icon(Icons.call, size: 150),
    HomePage2(),
    Icon(Icons.camera, size: 150),
    Icon(Icons.chat, size: 150),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(40, 40, 40, 1),
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 20),
      child: Scaffold(
        // appBar: Customappbar(),
        appBar: Myappbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 22.0),
              Myserchbar(),
              Center(
                child: _pages.elementAt(_selectedIndex),
              ),
              SizedBox(
                height: 26,
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 41.0,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(7),
              color: Color.fromRGBO(75, 75, 75, 1)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/svgicons/home.svg',
                semanticsLabel: 'Home',
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/svgicons/navbooks.svg',
                semanticsLabel: 'Books',
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/svgicons/navbag.svg',
                semanticsLabel: 'Bag',
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/svgicons/robot.svg',
                semanticsLabel: 'AI',
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/svgicons/marketstall.svg',
                semanticsLabel: 'Market',
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
            ),
          ]),
        ),
      ),
    );
  }
}

import 'dart:async';

/*import 'package:flutter_svg/flutter_svg.dart';*/
/*import 'package:bookworm/login.dart';*/
import 'package:flutter/material.dart';
import 'package:bookworm/main.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen duration
    Timer(
      Duration(seconds: 2), // Adjust the duration as needed
      () {
        // Navigate to the main screen or any other screen after the delay
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>
                MyHomePage(title: 'appName'), // Replace with your main screen
          ),
        );
      },
    );
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282828),
      body: Center(
        child: Image.asset(
          "assets/icons/BookWorm-03.png", // Replace with your image file path in the assets folder
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
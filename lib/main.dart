import 'package:bookworm/splashscreen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';
import 'signup.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarBrightness: Brightness.light,
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appName = 'Bookworm';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          background: Color(0xFF282828),
          seedColor: Color(0xFF121212),
          brightness: Brightness.dark,
        ),
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: GoogleFonts.poppins(
            fontSize: 22,
          ),
          displayMedium: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          displaySmall: GoogleFonts.poppins(
            fontSize: 10,
            fontWeight: FontWeight.w200,
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 5,
          ),
        ),
      ),
      // onGenerateRoute: (settings) {
      //   // Widget page;
      //   if (settings.name == '/') {
      //     // Show first home screen on the first load
      //     if (firstTimeLoaded) {
      //       // page = FirstHomeScreen();
      //       firstTimeLoaded = false;
      //       return MaterialPageRoute(
      //           builder: (context) => HomeScreen(), settings: settings);
      //     } else {
      //       // Show second home screen on every load after the first load
      //       // page = SecondHomeScreen();
      //       return MaterialPageRoute(
      //           builder: (context) => HomeScreen2(), settings: settings);
      //     }
      //   }
      //   return MaterialPageRoute(
      //       builder: (context) => SplashScreen(), settings: settings);
      //   // return MaterialPageRoute(builder: (context) => page, settings: settings);
      // },
      home: SplashScreen(),
    );
  }
}

bool firstTimeLoaded = true;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool showButtons;

  @override
  void initState() {
    super.initState();
    showButtons = false;

    // Add a delay of 2 seconds before showing the buttons
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        showButtons = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 565),
            margin: EdgeInsets.all(30),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'assets/icons/BookWorm-03.png',
                    fit: BoxFit.contain,
                  ),
                ),

                // Use AnimatedOpacity to gradually show the buttons
                AnimatedOpacity(
                  opacity: showButtons ? 1.0 : 0.0,
                  duration: const Duration(seconds: 2),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFFCC73F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: const Color(0xFFFCC73F)),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFC80741),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

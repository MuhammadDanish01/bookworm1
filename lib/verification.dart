// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'newpassword.dart';

class ForgotPasswordTwoScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageContainerHeight = screenHeight / 5;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.62,
            child: SvgPicture.asset("assets/svgicons/cornercircles.svg"),
            // left: 250,
          ),
          Positioned(
            child: Center(
              child: Container(
                constraints: BoxConstraints(maxWidth: 565),
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Text(
                        'Verification',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: imageContainerHeight,
                      child: Image.asset(
                        'assets/images/verification.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 20),
                    _buildTextField(
                      context: context,
                      hintText: 'Enter Email Address',
                      iconPath: 'assets/icons/email.png',
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: Add logic to store the email in the backend
                          // For now, you can print the email to the console
                          print('Email: ${_emailController.text}');

                          // Navigate to ForgotPasswordTwoScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordThreeScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFC80741),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 5,
                        ),
                        child: Text(
                          'Verify',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Didn’t receive the code? ',
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          GestureDetector(
                            onTap: () {
                              // TODO: Add logic
                            },
                            child: Text(
                              'Resend',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: Color.fromARGB(255, 255, 238, 0),
                                    decoration: TextDecoration.underline,
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
          )
        ],
      ),
    );
  }

  Widget _buildTextField({
    required BuildContext context,
    required String hintText,
    String iconPath = '',
    bool isPassword = false,
    bool showPassword = false,
    VoidCallback? togglePasswordVisibility,
  }) {
    return Container(
      width: double.infinity,
      height: 49,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF6E6E6E),
      ),
      child: Row(
        children: [
          if (iconPath.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(
                iconPath,
                fit: BoxFit.contain,
                color: Colors.white,
              ),
            ),
          Expanded(
            child: TextField(
              obscureText: isPassword && !showPassword,
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFC6C6C6),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          if (isPassword)
            GestureDetector(
              onTap: togglePasswordVisibility,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  showPassword ? Icons.visibility : Icons.visibility_off,
                  color: Color.fromARGB(130, 255, 255, 255),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
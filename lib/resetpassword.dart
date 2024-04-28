// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'verification.dart';
import 'signup.dart';

class ForgotPasswordOneScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double imageContainerHeight = screenHeight / 6;

    return Scaffold(
      body: Center(
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
                  'Reset Password',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: imageContainerHeight,
                child: Image.asset(
                  'assets/images/forgotPassword.png',
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
                        builder: (context) => ForgotPasswordTwoScreen(),
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
                    'Send',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 40,
                ),
                child: Text(
                  '- or -',
                  style: Theme.of(context).textTheme.displaySmall!,
                ),
              ),
              Column(
                children: [
                  _buildSocialButton(
                    context: context,
                    iconPath: 'assets/icons/google.png',
                    text: 'Login with Google',
                    onPressed: () {
                      // Handle logic for Google login
                    },
                  ),
                  SizedBox(height: 10),
                  _buildSocialButton(
                    context: context,
                    iconPath: 'assets/icons/facebook.png',
                    text: 'Login with Facebook',
                    onPressed: () {
                      // Handle logic for Facebook login
                    },
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Don’t have an account? ',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
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

  Widget _buildSocialButton({
    required BuildContext context,
    required String iconPath,
    required String text,
    required VoidCallback onPressed,
  }) {
    return Container(
      constraints: BoxConstraints(maxHeight: 42),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF4B4B4B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 12,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

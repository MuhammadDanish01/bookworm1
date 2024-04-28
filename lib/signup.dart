import 'package:bookworm/form1.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool showPassword = false;
  bool showConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 565),
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  constraints: BoxConstraints(maxHeight: 149),
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Image.asset(
                    'assets/icons/BookWorm-03.png',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    'Signup',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Username',
                  iconPath: 'assets/icons/person.png',
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Email Address',
                  iconPath: 'assets/icons/email.png',
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Password',
                  iconPath: 'assets/icons/lock.png',
                  isPassword: true,
                  showPassword: showPassword,
                  togglePasswordVisibility: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
                SizedBox(height: 10),
                _buildTextField(
                  hintText: 'Confirm Password',
                  iconPath: 'assets/icons/lock.png',
                  isPassword: true,
                  showPassword: showConfirmPassword,
                  togglePasswordVisibility: () {
                    setState(() {
                      showConfirmPassword = !showConfirmPassword;
                    });
                  },
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => Form1(),
                        ),
                      );
                      // Handle signup logic
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFC80741),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                    ),
                    child: Text(
                      'Sign Up',
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    '- or -',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      _buildSocialButton(
                        iconPath: 'assets/icons/google.png',
                        text: 'Login with Google',
                        onPressed: () {
                          // Handle logic for Google login
                        },
                      ),
                      SizedBox(height: 10),
                      _buildSocialButton(
                        iconPath: 'assets/icons/facebook.png',
                        text: 'Login with Facebook',
                        onPressed: () {
                          // Handle logic for Facebook login
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already have an account? ',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Login',
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
      ),
    );
  }

  Widget _buildTextField({
    required String hintText,
    String iconPath = '',
    bool isPassword = false,
    bool showPassword = false,
    VoidCallback? togglePasswordVisibility,
  }) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(maxHeight: 49),
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
                  color: Colors.white,
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
    required String iconPath,
    required String text,
    required VoidCallback onPressed,
  }) {
    return Container(
      constraints: BoxConstraints(maxHeight: 41),
      child: Expanded(
        child: TextButton(
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
      ),
    );
  }
}

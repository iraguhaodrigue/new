import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 67, 54, 1),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 99.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Tech',
                      style: GoogleFonts.poppins(
                        fontSize: 70.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Me',
                      style: GoogleFonts.poppins(
                        fontSize: 70.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              // Form Fields
              _buildFormField('Your Name', ' your full name', Icons.person),
              _buildFormField('Email', ' Email Address', Icons.email),
              _buildFormField('Phone Number', ' Phone Number', Icons.phone),
              _buildFormField('Password', ' Password', Icons.lock, isPassword: true),
              _buildFormField('Confirm Password', 'Confirm Password', Icons.lock, isPassword: true),
              SizedBox(height: 20.0),
              // Next Button
              ElevatedButton(
                onPressed: () {
                  // Add functionality for the "Next" button
                  _navigateToOTPVerificationScreen(context);
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  fixedSize: MaterialStateProperty.all<Size>(Size(256.0, 60.0)),
                  overlayColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.6)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormField(String label, String hint, IconData icon, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Color.fromARGB(255, 53, 42, 102),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: TextStyle(color: Colors.white, fontSize: 20),
              prefixIcon: Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color.fromRGBO(47, 46, 65, 0.9),
                  style: BorderStyle.solid,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            style: TextStyle(color: Colors.white),
            obscureText: isPassword,
          ),
        ],
      ),
    );
  }

  void _navigateToOTPVerificationScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => OTPVerificationScreen()), // Replace with your OTP verification screen
    );
  }
}

class OTPVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Center(
        child: Text('This is the OTP verification screen.'),
      ),
    );
  }
}

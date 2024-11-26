import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tariq/presentation/login_screen/login_screen.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),

              // Login Header
              const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Satoshi",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F41BB),
                ),
              ),
              const SizedBox(height: 10),

              // Description
              const Text(
                "Create an account so you can explore all the existing jobs",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontFamily: "Satoshi",
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 35),

              // Email Field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Color(0xFFF1F4FF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF1F41BB),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  filled: true,
                  fillColor: Color(0xFFF1F4FF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF1F41BB),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  filled: true,
                  fillColor: Color(0xFFF1F4FF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(
                      color: Color(0xFF1F41BB),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 50),

              // Sign In Button
              ElevatedButton(
                onPressed: () {
                  // Sign In Action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1F41BB),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Satoshi",
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Create New Account Button
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Already Have an account',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: "Satoshi",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 80),

              // Divider with "or login to"
              const Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'or signup with',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

// Social Media Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Button 1 - Facebook
                  ElevatedButton.icon(
                    onPressed: () {
                      // Facebook Login Action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                    ),
                    icon: SvgPicture.asset(
                      'assets/facebook.svg', // Replace with your SVG path
                      height: 20,
                      width: 20,
                    ),
                    label: const Text(
                      '',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  // Button 2 - Google
                  ElevatedButton.icon(
                    onPressed: () {
                      // Google Login Action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                    ),
                    icon: SvgPicture.asset(
                      'assets/google.svg', // Replace with your SVG path
                      height: 20,
                      width: 20,
                    ),
                    label: const Text(
                      '',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  // Button 3 - Apple
                  ElevatedButton.icon(
                    onPressed: () {
                      // Apple Login Action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                    ),
                    icon: SvgPicture.asset(
                      'assets/apple.svg', // Replace with your SVG path
                      height: 20,
                      width: 20,
                    ),
                    label: const Text(
                      '',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

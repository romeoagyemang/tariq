import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tariq/presentation/login_screen/login_screen.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SVG Icon
            SvgPicture.asset(
              'assets/welcome.svg', // Replace with your SVG file path
              height: 300,
              width: 300,
            ),
            const SizedBox(height: 30),

            // Title
            const Text(
              'Discover your Events and Dream Job here',
              style: TextStyle(
                fontFamily: "Satoshi",
                fontSize: 30,
                color: Color(0xFF1F41BB),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            // Description
            const Text(
              'Explore all the existing job roles based on your interest and study major',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Satoshi",
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 170),

            // Login Button
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1F41BB),
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "Satoshi",
                    ),
                  ),
                ),
                const SizedBox(width: 50),

                // Signup TextButton
                TextButton(
                  onPressed: () {
                    // Navigate to signup screen
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Satoshi",
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

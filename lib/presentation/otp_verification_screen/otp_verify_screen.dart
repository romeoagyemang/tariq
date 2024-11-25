import 'package:flutter/material.dart';
import 'package:tariq/presentation/new_password_screen/new_password_screen.dart';

class OtpVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF1F41BB)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            // OTP Verification
            Container(
              alignment: Alignment.center,
              child: const Text(
                'OTP Verification',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Satoshi",
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F41BB),
                ),
              ),
            ),
            const SizedBox(height: 10),

            Container(
              alignment: Alignment.center,
              child: const Text(
                "Enter the verification code we just sent on your email address",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Satoshi",
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 30),
            // OTP Input Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFF1F4FF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 30),
            // Verify Button

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPasswordScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1F41BB),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Satoshi",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 250),
            // Resend OTP Text
            Center(
              child: GestureDetector(
                onTap: () {
                  // Resend OTP Action
                },
                child: const Text.rich(
                  TextSpan(
                    text: 'Didn\'t receive OTP code? ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontFamily: "Satoshi",
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                          color: Color(0xFF1F41BB),
                          fontFamily: "Satoshi",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

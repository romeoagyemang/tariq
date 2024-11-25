import 'package:flutter/material.dart';
import 'package:tariq/presentation/onboard_screen/onboard_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    // Delay before navigating to the next page
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F41BB),
      body: Stack(
        children: [
          // Curvy Lines at the top-right
          Positioned(
            top: -50,
            right: -50,
            child: CurvyLines(),
          ),
          // Centered Text
          const Center(
            child: Text(
              'Tareek',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: "Astonpoliz",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurvyLines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(250, 250),
      painter: CurvyLinesPainter(),
    );
  }
}

class CurvyLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // First curvy line
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final path1 = Path();
    path1.moveTo(size.width * 0.5, 0);
    path1.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.5,
      size.width,
      size.height * 0.25,
    );
    path1.lineTo(size.width, 0);
    path1.close();
    canvas.drawPath(path1, paint);

    // White gap
    final whitePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path2 = Path();
    path2.moveTo(size.width * 0.55, 0);
    path2.quadraticBezierTo(
      size.width * 0.78,
      size.height * 0.5,
      size.width,
      size.height * 0.3,
    );
    path2.lineTo(size.width, 0);
    path2.close();
    canvas.drawPath(path2, whitePaint);

    // Second curvy line
    final secondPaint = Paint()
      ..color = Colors.lightBlueAccent
      ..style = PaintingStyle.fill;

    final path3 = Path();
    path3.moveTo(size.width * 0.6, 0);
    path3.quadraticBezierTo(
      size.width * 0.85,
      size.height * 0.6,
      size.width,
      size.height * 0.35,
    );
    path3.lineTo(size.width, 0);
    path3.close();
    canvas.drawPath(path3, secondPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

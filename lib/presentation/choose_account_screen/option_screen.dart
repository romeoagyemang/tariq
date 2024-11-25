import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tariq/presentation/signup_screen/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OptionsScreen(),
    );
  }
}

class OptionsScreen extends StatefulWidget {
  @override
  _OptionsScreenState createState() => _OptionsScreenState();
}

class _OptionsScreenState extends State<OptionsScreen> {
  String selectedOption = ""; // Track selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Tareek',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Astonpoliz",
                  color: Color(0xFF1F41BB),
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Continue as',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            // Job Seeker Card
            OptionCard(
              title: "Job Seeker",
              description: "Finding a job here never been easier than before",
              svgPath: "assets/jobseeker.svg",
              isSelected: selectedOption == "Job Seeker",
              onTap: () {
                setState(() {
                  selectedOption = "Job Seeker";
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            // Recruiter Card
            OptionCard(
              title: "Recruiter",
              description: "Finding a job here never been easier than before",
              svgPath: "assets/recruiter.svg",
              isSelected: selectedOption == "Recruiter",
              onTap: () {
                setState(() {
                  selectedOption = "Recruiter";
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final String title;
  final String description;
  final String svgPath;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionCard({
    Key? key,
    required this.title,
    required this.description,
    required this.svgPath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allows content to overflow outside the card
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF1F41BB) : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color:
                    isSelected ? const Color(0xFF1F41BB) : Colors.grey.shade300,
                width: 2,
              ),
              boxShadow: [
                if (isSelected)
                  const BoxShadow(
                    color: Color(0xFF1F41BB),
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
              ],
            ),
            child: Row(
              children: [
                // SVG Icon
                SvgPicture.asset(
                  svgPath,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(width: 16),
                // Title and Description
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isSelected ? Colors.white : Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 14,
                          color: isSelected ? Colors.white70 : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isSelected)
          Positioned(
            right: -8,
            bottom: -12,
            child: Container(
              height: 28,
              width: 28,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check,
                color: Color(0xFF1F41BB),
                size: 18,
              ),
            ),
          ),
      ],
    );
  }
}

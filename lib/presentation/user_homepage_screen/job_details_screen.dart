import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JobDetailsScreen(),
    );
  }
}

class JobDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Back Action
          },
        ),
        centerTitle: true,
        title: const Text(
          "Job Details",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Satoshi",
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {
              // Options Action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "HighSpeed Studio",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Satoshi",
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Senior Software Engineer",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontFamily: "Satoshi",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 80, // Diameter of the circle
                  width: 80,

                  child: Padding(
                    padding: const EdgeInsets.all(
                        8.0), // Optional padding inside the circle
                    child: SvgPicture.asset(
                      'assets/company_logo.svg', // Path to your SVG
                      fit: BoxFit
                          .contain, // Ensures the SVG fits within the circle
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Buttons Row
            Row(
              children: [
                _buildTagButton("Remote"),
                const SizedBox(width: 8),
                _buildTagButton("Full-time"),
                const SizedBox(width: 8),
                _buildTagButton("Hourly"),
              ],
            ),
            const SizedBox(height: 20),
            // Details Section
            Column(
              children: [
                _buildDetailRow(
                  svgPath: "assets/coins.svg", // Replace with your SVG path
                  title: "Location",
                  description: "San Francisco, CA",
                ),
                const SizedBox(height: 12),
                _buildDetailRow(
                  svgPath: "assets/briefcase.svg", // Replace with your SVG path
                  title: "Salary",
                  description: "\$80k - \$120k/year",
                ),
              ],
            ),
            const Divider(height: 30),
            // Job Description
            const Text(
              "Job Description",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: "Satoshi",
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontFamily: "Satoshi",
              ),
            ),
            const SizedBox(height: 20),
            // Additional Details
            Column(
              children: List.generate(5, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        child: SvgPicture.asset(
                          'assets/great.svg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        "Additional detail text",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                );
              }),
            ),
            const Spacer(),
            // Bottom Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Circular Button with SVG
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey[200],
                  child: SvgPicture.asset(
                    'assets/share.svg', // Replace with your SVG path
                    height: 24,
                    width: 24,
                  ),
                ),
                // Text Button
                ElevatedButton(
                  onPressed: () {
                    // Apply Action
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 12),
                    backgroundColor: Color(0xFF1F41BB),
                  ),
                  child: const Text(
                    "Apply Now",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTagButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFF1F41BB)),
      ),
    );
  }

  Widget _buildDetailRow(
      {required String svgPath,
      required String title,
      required String description}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.grey[200],
          child: SvgPicture.asset(
            svgPath,
            height: 24,
            width: 24,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Satoshi",
                  fontWeight: FontWeight.bold),
            ),
            Text(
              description,
              style: const TextStyle(
                  fontSize: 14, fontFamily: "Satoshi", color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

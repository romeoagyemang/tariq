import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationsScreen(),
    );
  }
}

class NotificationsScreen extends StatelessWidget {
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
          "Notifications",
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
        child: ListView(
          children: [
            NotificationCard(
              backgroundColor: Color(0xFF1F41BB),
              color: Colors.white,
              svgIcon: 'assets/notification_icon_one.svg',
              title: 'New Job Posted',
              description: 'A new job has been posted matching your profile.',
              timeAgo: '10hrs ago',
            ),
            SizedBox(height: 16),
            NotificationCard(
              backgroundColor: Colors.white,
              color: Colors.black,
              svgIcon: 'assets/notification_icon_two.svg',
              title: 'Interview Scheduled',
              description: 'Your interview is scheduled for tomorrow.',
              timeAgo: '2 days ago',
            ),
            SizedBox(height: 16),
            NotificationCard(
              backgroundColor: Colors.white,
              color: Colors.black,
              svgIcon:
                  'assets/notification_icon_three.svg', // Replace with your SVG
              title: 'Profile Update Reminder',
              description: 'Please update your profile to stay current.',

              timeAgo: '3 days ago',
            ),
            SizedBox(height: 16),
            NotificationCard(
              backgroundColor: Colors.white,
              color: Colors.black,
              svgIcon:
                  'assets/notification_icon_four.svg', // Replace with your SVG
              title: 'New Message',
              description: 'You have a new message from a recruiter.',

              timeAgo: '5 days ago',
            ),
            SizedBox(height: 16),
            NotificationCard(
              backgroundColor: Colors.white,
              color: Colors.black,
              svgIcon:
                  'assets/notification_icon_four.svg', // Replace with your SVG
              title: 'Application Status Update',
              description: 'Your application status has been updated.',

              timeAgo: '1 week ago',
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final Color backgroundColor;
  final Color color;
  final String svgIcon;
  final String title;
  final String description;

  final String timeAgo;

  const NotificationCard({
    Key? key,
    required this.backgroundColor,
    required this.color,
    required this.svgIcon,
    required this.title,
    required this.description,
    required this.timeAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Row with SVG Icon, Title, and Description
          Row(
            children: [
              SvgPicture.asset(
                svgIcon,
                height: 40,
                width: 40,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Satoshi",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: backgroundColor == Colors.blue
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontFamily: "Satoshi",
                      fontSize: 14,
                      color: backgroundColor == Colors.blue
                          ? Colors.white70
                          : Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 12),
          // Second Row with Time Ago and "Mark as Read"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                timeAgo,
                style: TextStyle(
                  fontSize: 12,
                  color: backgroundColor == Colors.blue
                      ? Colors.white70
                      : Colors.black54,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Handle Mark as Read
                },
                child: const Text(
                  'Mark as Read',
                  style: TextStyle(
                    fontFamily: "Satoshi",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

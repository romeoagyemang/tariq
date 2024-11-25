import 'package:flutter/material.dart';

import 'package:tariq/presentation/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tareek Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Set HomePage as the starting screen
      home: SplashScreen(),
      debugShowCheckedModeBanner: false, // Disable the debug banner
    );
  }
}

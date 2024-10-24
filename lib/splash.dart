import 'dart:async';
import 'package:flutter/material.dart';

import 'login.dart';

// Import your home screen widget

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Adjust background color if needed
      body: Center(
        child: Image.asset('asset/image/splash.gif',width: 400 ), // Load GIF from assets
      ),
    );
  }
}

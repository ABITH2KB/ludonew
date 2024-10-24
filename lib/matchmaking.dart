import 'package:flutter/material.dart';

class Match extends StatefulWidget {
  const Match({Key? key}) : super(key: key);

  @override
  State<Match> createState() => _MatchState();
}
class _MatchState extends State<Match> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'asset/image/bg.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          // Row at the top
          Positioned(
            top: 10,
            left: 10, // Adjust as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, // Center the images
              children: [
                Image.asset(
                  'asset/image/profile.png', // Replace with your image path
                  width: 70, // Set width if needed
                  height: 100, // Set height if needed
                ),
                const SizedBox(width: 290), // Add spacing between images
                Image.asset(
                  'asset/image/home.png', // Replace with your image path
                  width: 70, // Set width if needed
                  height: 100, // Set height if needed
                ),
              ],
            ),
          ),
          // Column that contains 3.png and other elements below it
          Positioned(
            top: 100, // Adjust top position to place it below the row
            left: 0,
            right: 0,
            child: Column(
              children: [
                // Image below the row
                Image.asset(
                  'asset/image/3.png', // Replace with your image path
                  width: 200, // Adjust size if needed
                  height: 150, // Adjust size if needed
                ),

                const SizedBox(height: 10), // Spacing between elements

                const Text(
                  "PLAY ONLINE",
                  style: TextStyle(color: Colors.white, fontSize: 31,
                  fontFamily: 'chyler'),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

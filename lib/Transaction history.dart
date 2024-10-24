import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  body: Stack(
      children: [
        // Background Image
        Positioned.fill(
          child: Image.asset(
            'asset/image/back.jpeg', // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        // Blur effect
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Increased blur strength
            child: Container(
              color: Colors.black.withOpacity(0), // Transparent container
            ),
          ),
        ),
        // Centered Container
        Center(
          child: Container(
            width: 340,  // Adjust size as needed
            height: 490,
            decoration: BoxDecoration(
              color: Colors.white, // Semi-transparent background
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.red,width: 3),

              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              children: [

              ],
            ),
          ),
        ),
        Positioned(
          top: 130.h, // Adjust this value for the overlap
          left: 40.w,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 50.w),
              Image.asset(
                'asset/image/Group 891.png',
                width: 180.w,
                height: 90.h, // Adjust the height to overlap more or less
              ),
              SizedBox(width: 10.w), // Space between the images
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  'asset/image/Vector.png', // Replace with your image path
                  width: 60.w,
                  height: 40.h,
                ),
              ),
            ],
          ),
        ),
      ],

    ),
    );
  }
}

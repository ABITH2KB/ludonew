import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Add this import
import 'package:ludokhel1/player2,4.dart';
import 'package:ludokhel1/switch.dart';
import 'dart:ui';

import 'Counter.dart';
import 'crown selection.dart';
import 'new/game.dart';
import 'new/main.dart';

class Po extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Apply blur effect
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.1), // Slight tint if needed
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 58.h), // Use .h for height scaling
            child: Container(
              padding: EdgeInsets.all(20.w), // Use .w for width scaling
              width: 300.w,
              height: 400.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r), // Use .r for radius scaling
                border: Border.all(color: Colors.red),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    blurRadius: 0,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Container(
                      width: 345,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.red),
                      ),
                      child: const CustomSwitches(), // Replace the container with CustomSwitches
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 255.w,
                      height: 65.h,
                      child: MyApppp(),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 255.w,
                      height: 55.h,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.red),
                      ),
                      child: const Counter(),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: 255.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(color: Colors.red),
                      ),
                      child: const CustomSwitches2(),
                    ),
                    SizedBox(height: 5.h),
                    GestureDetector(onTap: (){
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  FludoGame  ()),
    );
                    },
                      child: Image.asset(
                        'asset/image/844.png', // Replace with your image path
                        width: 120.w,
                        height: 70.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 128.h, // Adjust this value for the overlap
          left: 50.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 40.w),
              Image.asset(
                'asset/image/879.png',
                width: 180.w,
                height: 100.h, // Adjust the height to overlap more or less
              ),
              SizedBox(width: 10.w), // Space between the images
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Image.asset(
                  'asset/image/Vector.png', // Replace with your image path
                  width: 90.w,
                  height: 40.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(375, 812), // Specify the design size for scaling (e.g., iPhone X size)
      builder: (context, child) => MaterialApp(debugShowCheckedModeBanner: false,
        home: Po(),
      ),
    ),
  );
}

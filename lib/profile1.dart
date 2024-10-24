import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Set your design size (width, height)
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          home: Scaffold(
            resizeToAvoidBottomInset: false, // Prevent resizing when the keyboard appears
            body: OverlayPage(),
          ),
        );
      },
    );
  }
}

class OverlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Keep the background transparent
      body: Stack(
        children: [
          // Background blur
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0.w, sigmaY: 2.0.h), // Responsive blur
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), // Adjust for keyboard
              child: Padding(
                padding: EdgeInsets.only(top: 20.h), // Responsive padding
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(20.w), // Responsive padding
                    width: 300.w, // Responsive width
                    height: 410.h, // Responsive height
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r), // Responsive border radius
                      border: Border.all(color: Colors.red, width: 1.w), // Responsive border width
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.9),
                          blurRadius: 0.r, // Responsive blur radius
                          offset: Offset(0.w, 0.h), // Responsive offset
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h), // Responsive padding
                            child: TextFormField(
                              maxLines: 14,
                              minLines: 10,
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                hintText: 'Please mention how we can help you',
                                hintStyle: TextStyle(color: Colors.red, fontSize: 14.sp), // Responsive font size
                                fillColor: Colors.red.withOpacity(0.5),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red, width: 1.w), // Responsive border width
                                  borderRadius: BorderRadius.circular(14.r), // Responsive border radius
                                ),
                              ),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp, // Responsive text size
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 68.h, // Responsive positioning
            left: 20.w, // Responsive positioning

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 90.w), // Responsive spacing
                Image.asset(
                  'asset/image/support.png',
                  width: 140.w, // Responsive width
                  height: 160.h, // Responsive height
                ),
                SizedBox(width: 20.w), // Responsive spacing
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    'asset/image/Vector.png', // Replace with your image path
                    width: 80.w, // Responsive width
                    height: 45.h, // Responsive height
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

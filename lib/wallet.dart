import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Transaction history.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'asset/image/back.jpeg',

              fit: BoxFit.cover,
            ),
          ),
          // Blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5), // Increased blur strength
              child: Container(
                color: Colors.black.withOpacity(0), // Transparent container
              ),
            ),
          ),
          // Centered Container
          Center(
            child: Container(
              width: 290.w,  // Adjusted using ScreenUtil
              height: 380.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r), // Adaptive radius
                border: Border.all(color: Colors.red, width: 3.w), // Adaptive border width
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.r, // Adaptive blur
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Container(
                    height: 40.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFF980E0E),
                    ),
                    child: Column(
                      children: [

                        SizedBox(height: 4),Text("600", style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,
                          fontSize: 10.sp, // Adaptive font size
                        )),
                        SizedBox(height: 5.h),
                        Text("Balance", style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.bold,
                          fontSize: 10.sp,
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  buildWalletRow('Winning Cash', '300'),
                  SizedBox(height: 15.h),
                  buildWalletRow('Deposite Cash', '300'),
                  SizedBox(height: 14.h),
                  buildWalletRow('Bonus', '300'),SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Image(image: AssetImage('asset/image/wallet2.png'),height: 50,width: 140,),
                      SizedBox(width: 50,),
                      Image(image: AssetImage('asset/image/wallet3.png'),height: 50,width: 140,)
                    ],
                  ),SizedBox(height: 16,),

                  Container(
                    width: 250.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10.w),
                        Text(
                          'Transaction History',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Color(0xFF980E0E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 27.w),
                        GestureDetector(
                          onTap: (){

                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                opaque: false, //
                                pageBuilder: (BuildContext context, _, __) => const Transaction(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'asset/image/VIEW.png',
                            width: 70.w,
                            height: 90.h, // Adjust the height to overlap more or less
                          ),
                        ),

                      ],
                    ),
                  ),
                ],

              ),
            ),
          ),
          Positioned(
            top: 110.h, // Adjust this value for the overlap
            left: 40.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 40.w),
                Image.asset(
                  'asset/image/Group 890.png',
                  width: 180.w,
                  height: 90.h, // Adjust the height to overlap more or less
                ),
                SizedBox(width: 15.w), // Space between the images
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    'asset/image/Vector.png', // Replace with your image path
                    width: 70.w,
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
  // Extracted widget for reusability
  Widget buildWalletRow(String title, String amount) {
    return Container(
      width: 250.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 8.w),
          Text(
            title,
            style: TextStyle(
              fontSize: 13.sp,
              color: const Color(0xFF980E0E),
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            amount,
            style: TextStyle(
              color: const Color(0xFF980E0E),
              fontSize: 13.sp,fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:ui';
class Overlayview extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Map<String, dynamic>> _fetchDetails() async {
    DocumentSnapshot doc = await _firestore
        .collection('details')
        .doc('sBV7jEWoXP8KrM5yzh72')
        .get();
    return doc.data() as Map<String, dynamic>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'asset/image/back.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 40.h),  // Adjusted with ScreenUtil
              child: Container(
                padding: EdgeInsets.all(20.w),
                width: 300.w,
                height: 400.h,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(15.r),
                  border: Border.all(color: Colors.red),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      blurRadius: 0.r,
                      offset: Offset(0, 0.h),
                    ),
                  ],
                ),
                child: FutureBuilder<Map<String, dynamic>>(
                  future: _fetchDetails(),
                  builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }
                    if (!snapshot.hasData || snapshot.data == null) {
                      return const Center(child: Text('No data found.'));
                    }
                    final data = snapshot.data!;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 1.h),
                        Image(
                          width: 70.w,
                          height: 70.h,
                          image: const AssetImage('asset/image/Ellipses.png'),
                        ),
                        Image(
                          width: 90.w,
                          height: 50.h,
                          image: const AssetImage('asset/image/change.png'),
                        ),
                        SizedBox(height: 20.h),
                        _buildInfoRow('NAME: ${data['name'] ?? 'Unknown'}'),
                        SizedBox(height: 10.h),
                        _buildInfoRow('Mobile: ${data['referralCode'] ?? 'Unknown'}'),
                        SizedBox(height: 10.h),
                        _buildInfoRow('Email: ${data['emailid'] ?? 'Unknown'}'),
                        SizedBox(height: 30.h),
                        _buildTotalWins(),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            top: 110.h,
            left: 5.w,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 90.w),
                Image.asset(
                  'asset/image/profilep.png',
                  width: 170.w,
                  height: 110.h,
                ),
                SizedBox(width: 15.w),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(
                    'asset/image/Vector.png',
                    width: 55.w,
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

  Widget _buildInfoRow(String text) {
    return Container(
      width: 248.w,
      height: 40.h,
      decoration: BoxDecoration(
        color:  const Color(0xFF980E0E),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 10.w),
          Text(
            text,
            style: TextStyle(
              fontSize: 15.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildTotalWins() {
    return Container(
      width: 150.w,
      height: 40.h,
      decoration: BoxDecoration(
        color:  const Color(0xFF980E0E),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          SizedBox(width: 10.w),
          Text(
            '     Total wins',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}

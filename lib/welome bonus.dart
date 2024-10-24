import 'dart:ui';

import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
              filter: ImageFilter.blur(sigmaY: 1,sigmaX: 1),// Increased blur strength
              child: Container(
                color: Colors.black.withOpacity(0), // Transparent container
              ),
            ),
          ),
          Center(
            child: Container(
              height: 500,
              width: 340,decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.red,
              width: 3)
              
            ),
              child: Column(children: [
                SizedBox(height: 20),Text("WELCOME BONUS",
                style: TextStyle(
                  fontFamily: 'chyler',
                  fontSize: 25
                ),),SizedBox(height: 18,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    '₹50 as been added to your wallet as welcome bonus, make your first deposit and get 10% cashback.',
               style: TextStyle(
                   fontSize: 17,
                 fontWeight: FontWeight.bold,
               ),),
                ),SizedBox(
                  height: 240,
                ),
              Image(width: 110,
                  height: 60,
                  image: AssetImage('asset/image/Countinue.png',)),
              ],

              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'animation.dart';
import 'bottom admin.dart';
import 'bottom2.dart';
import 'firebase_options.dart';
import 'home.dart';
import 'otp.dart';
import 'matchmaking.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Specify the design size
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Home(),
        );
      },
    );
  }
}

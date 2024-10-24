
import 'package:flutter/material.dart';

import 'game.dart';



class Fludo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FludoGame(),
      debugShowCheckedModeBanner: false,
    );
  }
}


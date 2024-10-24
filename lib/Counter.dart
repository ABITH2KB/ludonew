import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count+=5;
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 0) {
        _count-=5;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Makes the Material widget background transparent
      child: Column(
        children: [
          const Text(
            'SELECT YOUR BET',
            style: TextStyle(
              fontFamily: 'chyler',
              fontSize: 15,
              color: Colors.red,
              decoration: TextDecoration.none,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                color: Colors.transparent,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 29,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Color for the - button
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.remove, color: Colors.red, size: 15),
                        onPressed: _decrement,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 0),
                    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 55.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      '$_count',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Positioned(
                    left: -10, // Adjust this value to control overlap from the left circle
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white, // Color for the - button
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20, // Adjust this value to control overlap from the right circle
                    child: Material(
                      color: Colors.transparent,
                      child: Container(
                        width: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white, // Color for the + button
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Material(
                color: Colors.transparent,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 29,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Color for the + button
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add, color: Colors.red, size: 15),
                        onPressed: _increment,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

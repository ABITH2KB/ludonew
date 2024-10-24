import 'package:flutter/material.dart';
import 'package:ludokhel1/tab2.dart';

import 'home.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Home(),
    Home(),
    profile(),
    profile(),
    profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white.withOpacity(0.1), // Set the background color to transparent
        elevation: 4, // Remove the shadow
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/image/cart.png', // Replace with your custom image
              height: 30,
            ),
            label: '', // Remove the label if you don't want text
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/image/trophy.png', // Replace with your custom image
              height: 50,
            ),
            label: '', // Remove the label if you don't want text
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/image/home.png', // Replace with your custom image
              height: 30,
            ),
            label: '', // Remove the label if you don't want text
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/image/home.png', // Replace with your custom image
              height: 30,
            ),
            label: '', // Remove the label if you don't want text
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'asset/image/open-book.png', // Replace with your custom image
              height: 30,
            ),
            label: '', // Remove the label if you don't want text
          ),
        ],
      ),
    );
  }
}

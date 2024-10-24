import 'package:flutter/material.dart';
import 'package:ludokhel1/tab2.dart';
import 'home.dart'; // Assuming you have imported your pages correctly

void main() {
  runApp(btab());
}

class btab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2; // The index of the selected tab

  final List<Widget> _pages = [
    const profile(),
    const profile(), // Replace with actual pages
    const Home(),
    const profile(),
    const profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: const Color(0xFF980E0E),
        shape: const CircularNotchedRectangle(),
        notchMargin: 0.0,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF980E0E),
            ),
          ),
          height: 100.0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildTabItem(
                  imageAsset: 'asset/image/cart.png',
                  label: 'STORE',
                  index: 0,
                  isSelected: _selectedIndex == 0,
                ),
                _buildTabItem(
                  imageAsset: 'asset/image/trophy.png',
                  label: 'LEADER BOARD',
                  index: 1,
                  isSelected: _selectedIndex == 1,
                ),
                _buildTabItem(
                  imageAsset: 'asset/image/home1.png',
                  label: 'HOME',
                  index: 2,
                  isSelected: _selectedIndex == 2,
                  isMiddle: true,
                ),
                _buildTabItem(
                  imageAsset: 'asset/image/pink.png',
                  label: 'WALLET',
                  index: 3,
                  isSelected: _selectedIndex == 3,
                ),
                _buildTabItem(
                  imageAsset: 'asset/image/book.png',
                  label: 'QUICKGUID',
                  index: 4,
                  isSelected: _selectedIndex == 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required String imageAsset,
    required String label,
    required int index,
    required bool isSelected,
    bool isMiddle = false,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Container(
          height: isSelected ? 120.0 : 70.0, // Make selected tab taller
          width: isSelected ? 130.0 : 80.0, // Make selected tab wider
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 1),
            color: isSelected ? Colors.white.withOpacity(0.5) : Colors.white.withOpacity(0.3),
            borderRadius: isMiddle || isSelected
                ? BorderRadius.circular(13.0)
                : BorderRadius.circular(2.0),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.max, // Minimize the column size
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image.asset(
                  imageAsset,
                  height: isSelected ? 50 : 30, // Adjust image size
                  width: isSelected ? 60 : 50,
                ),
                const SizedBox(height: 4),
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isSelected ? 16 : 14, // Adjust font size for selected tab
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

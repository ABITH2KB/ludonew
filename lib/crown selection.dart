import 'package:flutter/material.dart';
void main() {
  runApp(MyApppp());
}
class MyApppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 360,
            height: 80,
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.red),
            ),
            child: SelectionWidget(),
          ),
        ),
      ),
    );
  }
}
class SelectionWidget extends StatefulWidget {
  @override
  _SelectionWidgetState createState() => _SelectionWidgetState();
}
class _SelectionWidgetState extends State<SelectionWidget> {
  int selectedIndex = 0;
  // List of crown image paths
  final List<String> crownImages = [
    'asset/image/cf1.png',
    'asset/image/cf2.png',
    'asset/image/cf3.png',
    'asset/image/cf4.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(crownImages.length, (index) {
        bool isSelected = selectedIndex == index;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (isSelected)
                  Positioned(
                    bottom: -1 ,
                    child: Container(
                      width: 49,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4,right: 3.5),
                  child: Transform.scale(
                    scale: isSelected ? 1.4 : 1.0,
                    child: Image.asset(
                      crownImages[index],
                      width: 50,
                      height: 70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

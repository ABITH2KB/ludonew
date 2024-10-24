import 'package:flutter/material.dart';

class CustomSwitches extends StatefulWidget {
  const CustomSwitches({Key? key}) : super(key: key);

  @override
  State<CustomSwitches> createState() => _CustomSwitchesState();
}

class _CustomSwitchesState extends State<CustomSwitches> {
  bool isFirstSwitchActive = false;
  bool isSecondSwitchActive = false;

  void toggleSwitch(bool isFirstSwitch) {
    setState(() {
      if (isFirstSwitch) {
        isFirstSwitchActive = !isFirstSwitchActive;
        isSecondSwitchActive = false;
      } else {
        isSecondSwitchActive = !isSecondSwitchActive;
        isFirstSwitchActive = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Use transparent color if needed
      child: Container(
        height: 90,width: 35, // Adjust the height here
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: InkWell(
                onTap: () => toggleSwitch(true),
                child: Container(width: 35,
                   height: 50,
                  decoration: BoxDecoration(
                    color: isFirstSwitchActive ? Colors.green : Colors.grey,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                    child: Text(
                      'QUICK',
                      style: TextStyle(
                        color: Colors.white,
                          fontFamily: 'chyler',
                          fontSize: 20/// Text color remains the same
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16.0), // Space between the switches
            Expanded(
              child: InkWell(
                onTap: () => toggleSwitch(false),
                child: Container(height: 50,width: 30,
                  decoration: BoxDecoration(
                    color: isSecondSwitchActive ? Colors.green : Colors.grey,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                    child: Text(
                      'CLASSIC',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'chyler',
                        fontSize: 20// Text color remains the same
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

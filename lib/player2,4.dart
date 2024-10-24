import 'package:flutter/material.dart';

class CustomSwitches2 extends StatefulWidget {
  const CustomSwitches2({Key? key}) : super(key: key);

  @override
  State<CustomSwitches2> createState() => _CustomSwitchesState();
}

class _CustomSwitchesState extends State<CustomSwitches2> {
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
      color: Colors.transparent,
      child: Container(
        height: 200,  // Adjust height if necessary
        width: 200,   // Adjust width if necessary
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                onTap: () => toggleSwitch(true),
                child: Container(
                  height: 100, // Increase this value to make the circle bigger
                  width: 100,  // Should be equal to height for a perfect circle
                  decoration: BoxDecoration(
                    color: isFirstSwitchActive ? Colors.green : Colors.grey,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red),
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'chyler',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: InkWell(
                onTap: () => toggleSwitch(false),
                child: Container(
                  height: 150, // Increase this value to make the circle bigger
                  width: 150,  // Should be equal to height for a perfect circle
                  decoration: BoxDecoration(
                    color: isSecondSwitchActive ? Colors.green : Colors.grey,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red),
                  ),
                  child: const Center(
                    child: Text(
                      '4',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'chyler',
                        fontSize: 20,
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

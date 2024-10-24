
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';  // Import provider package



// ChangeNotifier class to manage state
class WalletProvider extends ChangeNotifier {
  // Add variables that were previously in the State class
  // For example, if there were counters, flags, or other states
  // Example: int _balance = 0;
  // Example getter to access balance
  // int get balance => _balance;
  // Example method to modify state and notify listeners
  // void updateBalance(int amount) {
  //   _balance += amount;
  //   notifyListeners();
  // }
  // Add any other state-modifying methods as necessary
}
class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WalletProvider(),  // Provide the WalletProvider
      child: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'asset/image/back.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            // Blur effect
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5), // Increased blur strength
                child: Container(
                  color: Colors.black.withOpacity(0), // Transparent container
                ),
              ),
            ),
            // Central UI
            Center(
              child: Consumer<WalletProvider>(
                builder: (context, walletProvider, child) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Use the provider data in the UI
                      // Text('Balance: \${walletProvider.balance}', style: TextStyle(fontSize: 24)),
                      // Example of button to update balance
                      // ElevatedButton(
                      //   onPressed: () {
                      //     walletProvider.updateBalance(100);  // Update state
                      //   },
                      //   child: Text('Add 100'),
                      // ),
                      // Add your other widgets here
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

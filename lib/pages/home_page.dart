import 'package:flutter/material.dart';
import 'dart:io'; // Platform detection ke liye

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Platform.isAndroid ? "Android Home" : "iOS Home", // Platform-specific title
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello ${Platform.isAndroid ? "Android" : "iOS"}!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Button click action
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text("Button Clicked!"),
                    content: Text(
                        "You are using ${Platform.isAndroid ? "Android" : "iOS"}"),
                  ),
                );
              },
              child: const Text("Click Me"),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}

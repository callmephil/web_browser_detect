import 'package:flutter/material.dart';
import 'package:web_browser_detect/web_browser_detect.dart';

/// Runs the package example app.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  /// Creates the root widget for the browser detection example.
  const MyApp({super.key});

  /// Builds the demo UI with detected browser information.
  @override
  Widget build(BuildContext context) {
    // final browser = Browser(); // Throws exception if not on web platform.

    final browser = Browser.detectOrNull(); // Returns null if not on web platform.

    // You provide your own userAgent and vendor, works cross-platform.
    // final browser = Browser.detectFrom(userAgent: window.navigator.userAgent, vendor: window.navigator.vendor, appVersion: window.navigator.appVersion);

    return MaterialApp(
      title: 'web_browser_detect Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: .center,
            mainAxisSize: .min,
            children: [
              Text('The browser is ${browser?.browser ?? 'Wrong platform'}'),
              Text('Browser version is ${browser?.version ?? 'Wrong platform'}'),
            ],
          ),
        ),
      ),
    );
  }
}

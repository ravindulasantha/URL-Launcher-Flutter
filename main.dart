import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
              onPressed: () async {
                var url = Uri.https('sinhalagpt.com', '/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              child: const Text("Launch Website")),
        ),
      ),
    );
  }
}

// flutter pub add url_launcher

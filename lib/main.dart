import 'package:flutter/material.dart';
import 'package:mycf/ui/splash_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Cahaya Fajar',
      home: SplashPage(),
      debugShowCheckedModeBanner: true,
    );
  }
}

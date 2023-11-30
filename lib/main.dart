import 'package:flutter/material.dart';
import 'package:home_page_umkt/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const Scaffold(
        body: HomePage(),
      ),
    );
  }
}

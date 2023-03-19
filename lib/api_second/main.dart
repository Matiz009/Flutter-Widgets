import 'package:flutter/material.dart';
import 'package:widgets/http/home_page.dart';
import 'package:widgets/http/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const HomePage(),
      ),
    );
  }
}

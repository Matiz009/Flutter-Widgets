import 'package:flutter/material.dart';
import 'package:widgets/http/home_page.dart';

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
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Posts",
            style: TextStyle(fontSize: 20),
          )),
        ),
        body: const HomePage(),
      ),
    );
  }
}

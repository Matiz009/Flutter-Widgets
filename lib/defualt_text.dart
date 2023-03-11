import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Sample App')),
      body: Center(
        child: Column(children: [
          DefaultTextStyle(
              style:
                  const TextStyle(fontSize: 50, backgroundColor: Colors.brown),
              textAlign: TextAlign.center,
              child: Column(
                children: const [
                  Text(
                    'First',
                    style: TextStyle(color: Colors.amber),
                  ),
                  Text(
                    'Second',
                    style: TextStyle(color: Colors.green),
                  ),
                  Text(
                    'Third',
                    style: TextStyle(
                        color: Colors.pinkAccent,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Fourth',
                    style: TextStyle(
                        color: Colors.limeAccent,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        height: 10),
                  ),
                ],
              ))
        ]),
      ),
    ),
  ));
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
      ),
      body: Center(
          child: Container(
        height: 300,
        width: 200,
        color: Colors.tealAccent,
        child: Stack(children:  [
          const Text('First Element'),
          const Icon(Icons.access_alarms_outlined),
          Container(
            height: 300,
            width: 200,
            color: Colors.deepPurple,
            child: const Text('Hello'),
          )
        ]),
      )),
    ),
  ));
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.access_time_rounded,
            textDirection: TextDirection.ltr,
          ),
          Text('Hello'),
          Text(
            'data',
            style: TextStyle(
                fontFamily: 'Verdana',
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
          Icon(Icons.abc_sharp)
        ],
      ),
    ),
  ));
}

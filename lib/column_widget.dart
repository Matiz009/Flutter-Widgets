import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Column Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'First',
              style: TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 20,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Hello',
              style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              'Then',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Times New Roman',
                  fontSize: 30,
                  color: Colors.greenAccent),
            ),
            Icon(Icons.favorite),
            Icon(
              Icons.camera_alt,
              size: 32,
              color: Colors.red,
            )
          ],
        ),
      ),
    ),
  ));
}

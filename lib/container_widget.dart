import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Container App')),
        ),
        body:  Center(
          child: Container(
            color: Colors.lightBlueAccent,
            height: 200,
            width: 300,
            transform: Matrix4.rotationX(45.0),
            alignment: Alignment.center,
            //padding: const EdgeInsets.all(25.0),
            child: const Text(
              'Hello from Container',
              style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Times New Roman',backgroundColor: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}

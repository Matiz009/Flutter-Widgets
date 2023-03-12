import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Nayab Tahir')),
        ),
        body:  Center(
          child: Container(
            color: Colors.lightBlueAccent,
            height: 200,
            width: 300,
            //transform: Matrix4.rotationX(45.0),
            alignment: Alignment.center,
            //padding: const EdgeInsets.all(25.0),
            child: const Text(
              'Tahir Iqbal Bhatti',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: 'Times New Roman'),
            ),
          ),
        ),
      ),
    ),
  );
}

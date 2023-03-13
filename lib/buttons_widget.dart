import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton.icon(onPressed: (){if (kDebugMode) {
          print('Button Pressed');
        }}, icon: const Icon(Icons.face_2_outlined), label: const Text("Click"),style: TextButton.styleFrom(
          foregroundColor: Colors.cyan
        ),),
      ),
    ),
  ));
}
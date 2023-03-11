import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Matiz',
          style: TextStyle(
              fontFamily: 'Times New Roman',
              fontStyle: FontStyle.italic,
              fontSize: 20,
              decoration: TextDecoration.lineThrough),
        )),
      ),
      body: const Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        textScaleFactor: 3,
        //softWrap: false,
        maxLines: 3,
        style: TextStyle(
          color: Colors.redAccent,
          fontFamily: 'Times New Roman',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          wordSpacing: 10,
          letterSpacing: 3,
          //overflow: TextOverflow.ellipsis,
        ),
      ),
    ),
  ));
}

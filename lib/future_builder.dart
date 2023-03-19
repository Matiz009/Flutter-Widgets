import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String imgUrl = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Future Builder')),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black26,
              height: 340,
              width: 270,
              child: FutureBuilder(
                  future: getData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return Center(
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    }
                  }),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Reload'))
          ],
        )),
      ),
    );
  }

  Future<String> getData() async {
    await Future.delayed(const Duration(seconds: 5));
    imgUrl =
        'https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80';
    return imgUrl;
  }
}

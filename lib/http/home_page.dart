import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widgets/http/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SamplePosts> samplePosts = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: samplePosts.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 140,
                    color: Colors.lightBlueAccent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    margin: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'user Id:${samplePosts[index].userId}',
                            style: const TextStyle(
                                fontSize: 18, fontFamily: 'Times New Roman'),
                          ),
                          Text(
                            ' id:${samplePosts[index].id}',
                            style: const TextStyle(
                                fontSize: 18, fontFamily: 'Times New Roman'),
                          ),
                          Text(
                            'title:${samplePosts[index].title}',
                            maxLines: 1,
                            style: const TextStyle(
                                fontSize: 18, fontFamily: 'Times New Roman'),
                          ),
                          Text(
                            'body:${samplePosts[index].body}',
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'Times New Roman',
                            ),
                          )
                        ]),
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Future<Object> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplePosts.add(SamplePosts.fromJson(index));
      }
      return samplePosts;
    } else {
      return samplePosts;
    }
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  const Portfolio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white10,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 28,
              backgroundColor: Colors.yellowAccent,
              foregroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Peter',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton.icon(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(color: Colors.black12),
                  backgroundColor: Colors.amberAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {},
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: const Icon(Icons.send_sharp),
                ),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Contact me'),
                )),
          ),
        ],
      ),
    );
  }
}

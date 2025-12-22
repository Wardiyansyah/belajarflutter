import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Number Generator',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key:key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Number Generator App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Random Number :"),
            Text(
              _number.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
              ),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int number = Random().nextInt(10);
          setState(() {
            _number = number;
          });
        },
        child: Icon(Icons.shuffle),
      ),
    );
  }
}
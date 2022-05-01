import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics Exercise',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Top 5 Favorite Dishes'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.asset('assets/filipino_food.jpeg')
          ],
        ),
      )
    );
  }
}

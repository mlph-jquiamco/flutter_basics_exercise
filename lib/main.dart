import 'package:flutter/material.dart';
import 'package:flutter_basics_exercise/home_page.dart';
import 'details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics Exercise',
      routes: {
        Details.routeName: (context) => const Details(),
      },
      home: const Home()
    );
  }
}

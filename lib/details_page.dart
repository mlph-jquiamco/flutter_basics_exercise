import 'package:flutter/material.dart';
import 'dish_model.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  static const routeName = '/details';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Dish;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/${args.image}',
            width: 800,
            height: 400,
            fit: BoxFit.cover,
          )
        ],
      )
    );
  }
}

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
          ),
          for (final ingredient in args.ingredients) Text(ingredient),
          for (final procedure in args.procedures) Text(procedure)
        ],
      )
    );
  }

  // Widget setIngredientsSection(List<String>? ingredients) {
  //   if (ingredients == null) {
  //     return Container();
  //   }
  //   return ListView(
  //     children: [
  //       for (final ingredient in ingredients) Text(ingredient),
  //     ]
  //   );
  // }
}

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
          _setIngredientsSection(args.ingredients),
          for (final procedure in args.procedures) Text(procedure)
        ],
      )
    );
  }

  Widget _setIngredientsSection(List<String> ingredients) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: ListView(
        children: [
          const Text('Ingredients'),
          ..._convertToList(ingredients)
        ],
        shrinkWrap: true,
        physics: const ClampingScrollPhysics()
      )
    );
  }

  List<Widget> _convertToList(List<String> values) {
    return [for (final value in values) Text(value)];
  }
}

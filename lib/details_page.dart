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
            _setSection(context, 'Ingredients', args.ingredients),
            _setSection(context, 'Procedures', args.procedures)
          ],
        )
    );
  }

  Widget _setSection(BuildContext context, String title, List<String> ingredients) {
    return Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
            children: [
              _setHeader(context, title),
              ..._convertToList(ingredients)
            ],
            shrinkWrap: true,
            physics: const ClampingScrollPhysics()
        )
    );
  }

  Widget _setHeader(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  List<Widget> _convertToList(List<String> values) {
    return [for (final value in values) Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.all(4),
      child: Row (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 8,
            width: 8,
            margin: const EdgeInsets.only(right: 8, top: 4),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(14)),
          ),
          Flexible(child: Text(value))
        ],
      ),
    )];
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_basics_exercise/dish_service.dart';
import 'details_page.dart';
import 'dish_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Dish> _dishes = DishService().generateMockDishes();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Top 5 Favorite Dishes'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/filipino_food.jpeg',
            width: 500,
            height: 300,
            fit: BoxFit.cover,
          ),
          ..._generateDishList(context, _dishes)
        ],
      ),
    );
  }

  List<Card> _generateDishList(BuildContext context, List<Dish> dishes) {
    return [for (final dish in dishes) Card(
      child: ListTile(
          onTap: (){
            Navigator.pushNamed(
                context,
                Details.routeName,
                arguments: dish
            );
          },
          title: Text(dish.name),
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/${dish.image}'),
          ),
          trailing: const Icon(Icons.keyboard_arrow_right)
      ),
    )];
  }
}

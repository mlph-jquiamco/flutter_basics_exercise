import 'package:flutter/material.dart';
import 'details_page.dart';
import 'dish_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Dish> dishes = [
      Dish('Bagnet', 'bagnet.jpeg'),
      Dish('Chicken Bbq', 'chicken_bbq.jpeg'),
      Dish('Chicken Curry', 'chicken_curry.jpeg'),
      Dish('Chicken Macaroni', 'chicken_macaroni.jpeg'),
      Dish('Pork Adobo', 'pork_adobo.jpeg')
    ];

    return MaterialApp(
      title: 'Flutter Basics Exercise',
      routes: {
        Details.routeName: (context) => const Details(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Top 5 Favorite Dishes'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: dishes.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Image.asset(
                'assets/filipino_food.jpeg',
                width: 500,
                height: 300,
                fit: BoxFit.cover,
              );
            }
            final adjustedIndex = index - 1;
            return Card(
              child: ListTile(
                onTap: (){
                  Navigator.pushNamed(
                    context,
                    Details.routeName,
                    arguments: dishes[adjustedIndex]
                  );
                },
                title: Text(dishes[adjustedIndex].name),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${dishes[adjustedIndex].image}'),
                ),
                trailing: const Icon(Icons.keyboard_arrow_right)
              ),
            );
          },
        ),
      )
    );
  }
}

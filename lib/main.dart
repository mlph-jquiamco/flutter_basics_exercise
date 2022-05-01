import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Top 5 Favorite Dishes'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: dishes.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Image.asset('assets/filipino_food.jpeg');
            }
            return Card(
              child: ListTile(
                onTap: (){
                  // TODO: show details
                },
                title: Text(dishes[index - 1].name),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${dishes[index - 1].image}'),
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

class Dish {
  String name;
  String image;

  Dish(this.name, this.image);
}

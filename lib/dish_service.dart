import 'package:flutter_basics_exercise/dish_model.dart';

class DishService {
  final List<String> _bagnetIngredients = [
    ''
  ];
  final List<String> _bagnetProcedures = [
    ''
  ];

  List<Dish> generateMockDishes() {
    final List<Dish> mockDishes = [];
    mockDishes.add(Dish('Bagnet', 'bagnet.jpeg', ['1', '2', '3'],
        ['procedure 1', 'procedure 2']));
    mockDishes.add(Dish('Chicken Bbq', 'chicken_bbq.jpeg', [], []));
    mockDishes.add(Dish('Chicken Curry', 'chicken_curry.jpeg', [], []));
    mockDishes.add(Dish('Chicken Macaroni', 'chicken_macaroni.jpeg', [], []));
    mockDishes.add(Dish('Pork Adobo', 'pork_adobo.jpeg', [], []));
    return mockDishes;
  }
}
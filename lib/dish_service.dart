import 'package:flutter_basics_exercise/dish_model.dart';

class DishService {
  final List<String> _bagnetIngredients = [
    '3 lbs. pork belly',
    '2 tablespoons white vinegar',
    '2 tablespoons salt',
    '2 bunches lemongrass',
    '1 tablespoon whole peppercorn',
    '1 onion',
    '8 cups water',
    '6 cloves garlic',
    '3 laurel leaves',
    '6 cups cooking oil'
  ];

  final List<String> _bagnetProcedures = [
    'Preheat oven to 175F.',
    'Pour water into a pressure cooker. Add lemongrass, salt, whole peppercorn, and onion. Let boil.',
    'Add pork belly. Boil for 3 minutes. Cover the pressure cooker. Cook for 15 minutes.',
    'Let the pressure out completely Put the pork belly on a clean plate and let it cool-down for 10 minutes. Season the meat part with salt and ground black pepper. Turn it upside down and season the skin part with salt.',
    'Wrap the sides of the pork with an aluminum foil and then rub vinegar on the skin part.',
    'Bake it for 2 ½ hours to dehydrate the skin.',
    'Remove the pork from the oven. Set aside.',
    'Heat oil in a wide wok. Once the oil gets hot, add garlic and laurel leaves. Cook until the garlic floats. Remove the garlic and leaves afterwards using a strainer.',
    'Arrange a slab of pork belly over a skimmer. Pour hot oil over it using a ladle. Do this step until a crackling texture is formed on the skin. Perform the same steps until all the pork are done.',
    'Arrange on a serving plate. Serve with your favorite dipping sauce. Share and enjoy!'
  ];

  List<Dish> generateMockDishes() {
    final List<Dish> mockDishes = [];
    mockDishes.add(Dish('Bagnet', 'bagnet.jpeg', _bagnetIngredients, _bagnetProcedures));
    mockDishes.add(Dish('Chicken Bbq', 'chicken_bbq.jpeg', [], []));
    mockDishes.add(Dish('Chicken Curry', 'chicken_curry.jpeg', [], []));
    mockDishes.add(Dish('Chicken Macaroni', 'chicken_macaroni.jpeg', [], []));
    mockDishes.add(Dish('Pork Adobo', 'pork_adobo.jpeg', [], []));
    return mockDishes;
  }
}
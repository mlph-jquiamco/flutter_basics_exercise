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

  final List<String> _chickenBbqIngredients = [
    '4 pieces chicken leg quarters cleaned',
    '1/2 cup soy sauce',
    '1 piece lemon or 4 pieces calamansi',
    '2 teaspoons salt',
    '1 teaspoon ground black pepper',
    '1/2 cup banana ketchup'
  ];

  final List<String> _chickenBbqProcedures = [
    'Make the marinade by combining the soy sauce, juice of 1 lemon, banana ketchup, salt, and ground black pepper in a bowl. Stir to mix.',
    'Put the chicken leg quarters inside a large freezer bag, and then pour-in the marinade.',
    'Shake the bag gently to coat the chicken with marinade then remove the air inside the bag. Seal the bag then refrigerate overnight.',
    'Remove the chicken from the bag and transfer the remaining marinade to a bowl.',
    'Heat-up your grill and start grilling the chicken under medium heat for 12 to 15 minutes per side or until the chicken is completely cooked. Do not forget to baste the chicken with the remaining marinade mixture.',
    'Note: Chicken takes a long time to cook. Grilling it in high heat will cause the outer part of the chicken to cook earlier leaving the inside raw.',
    'Remove from the grill and transfer to a serving plate.',
    'Serve with steamed rice.',
    'Share and enjoy!'
  ];

  final List<String> _chickenCurryIngredients = [
    '2 lbs. chicken cut into serving pieces',
    '1 tablespoon curry powder',
    '1 piece potato cubed',
    '4 cloves garlic minced',
    '2 stalks celery sliced',
    '1 piece red bell pepper sliced',
    '2 pieces long green pepper',
    '1 piece onion chopped',
    '2 thumbs ginger cut into strips',
    '2 cups coconut milk',
    '1/2 cup all-purpose cream optional',
    '1 cup water',
    'fish sauce and ground black pepper to taste'
  ];

  final List<String> _chickenCurryProcedures = [
    'Heat oil in a pan. Fry potato for 1 minute per side. Remove from the pan. Set aside.',
    'Using the remaining oil, saute garlic, onion, celery, and ginger until onion softens.',
    'Add the chicken pieces. Saute until the outer part of the chicken turns light brown.',
    'Add 1 tablespoon fish sauce. Continue sautéing for 1 minute.',
    'Pour-in coconut milk and water. Let boil.',
    'Add curry powder. Stir until the powder is completely diluted. Cover the pot and continue cooking between low to medium heat until the liquid reduces to half.',
    'Add the red bell pepper and pan fried-potato. Cook for 5 minutes.',
    'Season with fish sauce and ground black pepper as needed. You can also add all-purpose cream if desired.',
    'Transfer to a serving bowl. Serve and enjoy!'
  ];

  final List<String> _chickenMacaroniIngredients = [
    '15 ounces Lady’s Choice Real Mayonnaise',
    '6 ounces chicken breast',
    '7 ounces elbow macaroni',
    '1/4 cup carrots minced',
    '1 tablespoon onion minced',
    '4 tablespoons sweet pickle relish',
    '3/4 cup pineapple tidbits',
    '4 ounces cheddar cheese diced',
    '2 teaspoons sugar',
    'Salt and ground black pepper to taste'
  ];

  final List<String> _chickenMacaroniProcedures = [
    'Cook macaroni based on package instructions. Set aside.',
    'Boil chicken in 3 cups of water for 30 minutes. Remove from the pot and let it cool down. Shred the chicken afterwards and set aside.',
    'Combine all the ingredients in a large bowl. Add Lady’s Choice Real Mayonnaise and season with sugar, salt, and ground black pepper. Fold until all ingredients are well blended.',
    'Cover the bowl and refrigerate for at least 1 hour.',
    'Serve chilled. Share and enjoy!'
  ];

  final List<String> _porkAdoboIngredients = [
    '2 lbs. pork shoulder cubed',
    '4 bay leaves',
    '½ cup soy sauce',
    '½ cup white vinegar',
    '7 ½ ounces lemon lime soda',
    '2 tablespoons oyster sauce',
    '2 teaspoons peppercorn crushed',
    '2 heads garlic',
    '1 onion',
    '¼ cup cooking oil'
  ];

  final List<String> _porkAdoboProcedures = [
    'Slice the garlic into thin pieces. Set aside.',
    'Start making the garlic chips by heating the cooking oil in pan. Add all the garlic. Continue cooking using low heat while stirring occasionally until the garlic turns golden brown and crispy.',
    'Separate the oil from the garlic. Set aside. Note: the oil is now garlic infused and can be used to cook other dishes in the future.',
    'Pour 3 tablespoons of garlic-infused oil on the same pan. Sauté the onion until it starts to caramelize.',
    'Add pork. Cook until the outer part turns medium brown in color.',
    'Add soy sauce, white vinegar, oyster sauce, lemon lime soda, and water. Let boil.',
    'Add cracked peppercorn, bay leaves, and half of the garlic chips. Cover the pan and continue cooking in low heat for 1 hour or until the pork gets tender.',
    'Remove the cover of the pan. Continue cooking until the sauce completely evaporates.',
    'Transfer to a serving plate. Serve with warm rice.',
    'Garnish with chopped parsley and remaining garlic chips',
    'Share and enjoy!'
  ];

  List<Dish> generateMockDishes() {
    final List<Dish> mockDishes = [];
    mockDishes.add(Dish('Bagnet', 'bagnet.jpeg', _bagnetIngredients, _bagnetProcedures));
    mockDishes.add(Dish('Chicken Bbq', 'chicken_bbq.jpeg', _chickenBbqIngredients, _chickenBbqProcedures));
    mockDishes.add(Dish('Chicken Curry', 'chicken_curry.jpeg', _chickenCurryIngredients, _chickenCurryProcedures));
    mockDishes.add(Dish('Chicken Macaroni', 'chicken_macaroni.jpeg', _chickenMacaroniIngredients, _chickenMacaroniProcedures));
    mockDishes.add(Dish('Pork Adobo', 'pork_adobo.jpeg', _porkAdoboIngredients, _porkAdoboProcedures));
    return mockDishes;
  }
}
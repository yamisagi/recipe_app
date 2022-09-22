import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_ui/model/recipe_model.dart';

class DummyData {
  static final dummyText1 = Padding(
    padding: const EdgeInsets.only(left: 20, top: 40),
    child: Text(
      'Hi, Eren',
      style: GoogleFonts.nunito(
        color: Colors.grey,
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
  static final dummyText2 = Padding(
    padding: const EdgeInsets.only(left: 20, top: 20),
    child: Text(
      'What do you want to cook today?',
      style: GoogleFonts.nunito(
        color: Colors.white,
        fontSize: 35,
        fontWeight: FontWeight.bold,
        letterSpacing: 0,
        height: 1.2,
      ),
    ),
  );
  static final dummyText3 = Padding(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
    child: Text(
      'Most Popular Recipes',
      style: GoogleFonts.nunito(
        color: Colors.white,
        fontSize: 23,
        fontWeight: FontWeight.bold,
        letterSpacing: 0,
        height: 1.2,
      ),
    ),
  );

  static final List<String> dummyCategories = [
    'ENTREES',
    'APPS',
    'MEATS',
    'VEGAN',
    'SALADS',
  ];

  static final List<RecipeModel> items = [
    RecipeModel(
      foodServing: '2 Servings',
      foodTime: '30 min',
      cardColor: Colors.orange.shade500,
      foodName: 'Pasta Primavera',
      foodImage: 'assets/pasta_primavera.png',
      foodDescription: [
        'First you’ll bring a large pot of water to a boil, add salt, then cook pasta according to package directions. Reserve 1/2 cup pasta water before draining.',
        'While the pasta is boiling cook the veggies so they will finish at the same time as the pasta.',
        'To do so, heat olive oil in a 12-inch (and deep) skillet over medium-high heat. Add red onion and carrot and sauté 2 minutes.',
        'Add broccoli and bell pepper then sauté 2 minutes. Add squash and zucchini then sauté 2 – 3 minutes or until veggies have nearly softened.',
        'Add garlic tomatoes, and Italian seasoning and sauté 2 minutes longer.',
        'Pour veggies into now empty pasta pot or a serving bowl, add drained pasta, drizzle in lemon juice, season with a little more salt as needed and toss while adding in pasta water to loosen as desired.',
      ],
      foodIngredients: [
        'Penne pasta',
        'Salt',
        'Olive oil',
        'Fresh veggies including red onion, carrot, broccoli, bell pepper, yellow squash, zucchini, tomatoes and garlic',
        '2 tsp dried Italian seasoning',
        '2 Tbsp fresh lemon juice',
        '2 Tbsp chopped fresh parsley',
        '1/2 cup shredded parmigiano, divided',
      ],
      foodCalories: '675 Calories',
      foodReviews: '201 Reviews',
    ),
    RecipeModel(
      foodServing: '2 Servings',
      foodTime: '15 min',
      cardColor: const Color.fromARGB(255, 163, 113, 131),
      foodName: 'Pork Stir Fry',
      foodImage: 'assets/pork_stir_fry.png',
      foodDescription: [
        'Combine pork , sugar , soy sauce , five spice and fish sauce in a medium bowl. Toss to coat.',
        'Cook rice stick noodles , following packet directions until tender. Drain well. Cover to keep warm.',
        'Heat 1 tablespoon of oil in a wok or large frying pan over medium-high heat.',
        'Stir-fry pork, in 2 batches, for 1 to 2 minutes or until golden. Transfer to a bowl.',
        'Heat remaining oil in wok over high heat. Stir-fry onion , ginger , garlic , capsicum and carrot for 5 minutes or until just tender. ',
        ' Add pork, pak choy , snow peas , stock and oyster sauce . ',
        'Stir-fry for 2 minutes or until heated through. Add noodles. Toss to combine. Serve with lime wedges.',
      ],
      foodIngredients: [
        '600g pork loin medallions, thinly sliced',
        '2 tbsp brown sugar',
        '1 1/2 tbsp Fountain Soy Sauce',
        '1/2 tsp Chinese five spice',
        '2 tsp fish sauce',
        '1 1/2 tbsp vegetable oil',
        '1 carrot, halved, sliced diagonally',
        '1/4 cup oyster sauce',
      ],
      foodCalories: '487 Calories',
      foodReviews: '347 Reviews',
    )
  ];
}

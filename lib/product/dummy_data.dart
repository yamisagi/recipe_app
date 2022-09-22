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

  static final List<RecipeModel> items = [
    RecipeModel(
      cardColor: Colors.orange.shade500,
      foodName: 'Pasta Primavera',
      foodImage: 'assets/pasta_primavera.png',
      foodDescription: 'Null',
      foodIngredients: 'Null',
      foodCalories: 'Null',
      foodReviews: 'Null',
    ),
    RecipeModel(
      cardColor: const Color.fromARGB(255, 163, 113, 131),
      foodName: 'Pork Stir Fry',
      foodImage: 'assets/pork_stir_fry.png',
      foodDescription: 'Null',
      foodIngredients: 'Null',
      foodCalories: 'Null',
      foodReviews: 'Null',
    )
  ];
}

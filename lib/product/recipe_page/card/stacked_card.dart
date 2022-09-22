import 'package:flutter/material.dart';
import 'package:recipe_ui/product/recipe_page/appbar/app_bar_container.dart';
import 'package:recipe_ui/product/recipe_page/card/positioned_recipe.dart';


class RecipeStackedCard extends StatelessWidget {
  const RecipeStackedCard({
    Key? key,
    required this.cardColor,
    required this.heroTag,
    required this.imagePath,
    required this.foodName,
    required this.foodTime,
    required this.foodServing,
    required this.foodCalories,
    required this.foodReviews,
  }) : super(key: key);

  final Color cardColor;
  final String heroTag;
  final String imagePath;
  final String foodName;
  final String foodTime;
  final String foodServing;
  final String foodCalories;
  final String foodReviews;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBarContainer(cardColor: cardColor),
        Positioned(
          top: 25,
          left: 200,
          bottom: 0,
          child: Hero(
            tag: heroTag,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(imagePath),
            ),
          ),
        ),
        PositionedRecipe(
            foodName: foodName,
            foodTime: foodTime,
            foodServing: foodServing,
            foodCalories: foodCalories,
            foodReviews: foodReviews),
      ],
    );
  }
}

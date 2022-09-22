import 'package:flutter/material.dart';
import 'package:recipe_ui/product/home_page/app_bar/product_appbar.dart';
import 'package:recipe_ui/product/recipe_page/card/stacked_card.dart';

class RecipePage extends StatelessWidget {
  final String heroTag;
  final String imagePath;
  final Color cardColor;
  final String foodName;
  final String foodTime;
  final String foodServing;
  final String foodCalories;
  final String foodReviews;
  const RecipePage({
    super.key,
    required this.heroTag,
    required this.imagePath,
    required this.cardColor,
    required this.foodName,
    required this.foodTime,
    required this.foodServing,
    required this.foodCalories,
    required this.foodReviews,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const ProductAppBar(
        isHomePage: false,
      ),
      body: Column(
        children: [
          RecipeStackedCard(
            foodCalories: foodCalories,
            foodReviews: foodReviews,
            foodServing: foodServing,
            foodTime: foodTime,
            foodName: foodName,
            cardColor: cardColor,
            heroTag: heroTag,
            imagePath: imagePath,
          ),
        ],
      ),
    );
  }
}

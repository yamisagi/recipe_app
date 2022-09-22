import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/constants/text_styles.dart';
import 'package:recipe_ui/product/home_page/app_bar/bottom_bar.dart';
import 'package:recipe_ui/product/home_page/app_bar/product_appbar.dart';
import 'package:recipe_ui/product/recipe_page/card/stacked_card.dart';
import 'package:recipe_ui/product/recipe_page/views/description.dart';
import 'package:recipe_ui/product/recipe_page/views/ingredients.dart';

class RecipePage extends StatelessWidget {
  final String heroTag;
  final String imagePath;
  final Color cardColor;
  final String foodName;
  final String foodTime;
  final String foodServing;
  final String foodCalories;
  final String foodReviews;
  final List foodDescription;
  final List foodIngredients;
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
    required this.foodDescription,
    required this.foodIngredients,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        iconColor: cardColor,
      ),
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
          // Implement ingredients and steps
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: SingleChildScrollView(
                padding: Constants.recipePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Ingredients
                    Text(
                      Constants.ingredients,
                      style: ProductTextStyles.headerTextStyle,
                    ),
                    IngredientsWidget(foodIngredients: foodIngredients),
                    // Directions
                    Text(
                      Constants.directions,
                      style: ProductTextStyles.headerTextStyle,
                    ),
                    DescriptionWidget(foodDescription: foodDescription),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

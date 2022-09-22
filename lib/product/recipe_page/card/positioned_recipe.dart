import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/constants/text_styles.dart';
import 'package:recipe_ui/product/recipe_page/row/recipe_row.dart';

class PositionedRecipe extends StatelessWidget {
  const PositionedRecipe({
    Key? key,
    required this.foodName,
    required this.foodTime,
    required this.foodServing,
    required this.foodCalories,
    required this.foodReviews,
  }) : super(key: key);

  final String foodName;
  final String foodTime;
  final String foodServing;
  final String foodCalories;
  final String foodReviews;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 125,
      left: 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            foodName,
            style: ProductTextStyles.recipeTitleTextStyle,
          ),
          Constants.spacer,
          Constants.divider,
          Constants.spacer,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecipeRows(
                icon: Icons.timer,
                title: foodTime,
              ),
              Constants.spacer,
              RecipeRows(
                title: foodServing,
                icon: Icons.person,
              ),
              Constants.spacer,
              RecipeRows(
                title: foodCalories,
                icon: Icons.local_fire_department_outlined,
              ),
              Constants.spacer,
              RecipeRows(
                title: foodReviews,
                icon: Icons.star,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

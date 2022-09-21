import 'package:flutter/material.dart';

class RecipeModel {
  final String foodName;
  final String foodImage;
  final String foodDescription;
  final String foodIngredients;
  final String foodCalories;
  final String foodReviews;
  final Color cardColor;

  RecipeModel({
    required this.cardColor,
    required this.foodName,
    required this.foodImage,
    required this.foodDescription,
    required this.foodIngredients,
    required this.foodCalories,
    required this.foodReviews,
  });
}

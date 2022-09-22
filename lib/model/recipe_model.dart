import 'package:flutter/material.dart';

class RecipeModel {
  final String foodName;
  final String foodImage;
  final List foodDescription;
  final List foodIngredients;
  final String foodCalories;
  final String foodReviews;
  final Color cardColor;
  final String foodTime;
  final String foodServing;

  RecipeModel({
    required this.foodServing,
    required this.foodTime,
    required this.cardColor,
    required this.foodName,
    required this.foodImage,
    required this.foodDescription,
    required this.foodIngredients,
    required this.foodCalories,
    required this.foodReviews,
  });
}

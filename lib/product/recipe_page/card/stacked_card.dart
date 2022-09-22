import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/product/recipe_page/appbar/app_bar_container.dart';

import '../row/recipe_row.dart';

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
        Positioned(
          top: 125,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodName,
                style: GoogleFonts.nunito(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
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
        ),
      ],
    );
  }
}

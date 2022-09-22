import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/product/home_page/app_bar/bottom_bar.dart';
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
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Ingredients
                    Text(
                      'Ingredients',
                      style: Constants.headerTextStyle,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: foodIngredients.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 4,
                      ),
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.check),
                          title: Text(
                            foodIngredients[index],
                            // overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
                    // Directions
                    Text(
                      'Directions',
                      style: Constants.headerTextStyle,
                    ),
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: foodDescription.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Text(
                            '${index + 1}',
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          title: Text(
                            foodDescription[index],
                            // overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                    ),
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

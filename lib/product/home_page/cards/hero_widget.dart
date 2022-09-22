import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/pages/recipe_page.dart';
import 'package:recipe_ui/product/dummy_data.dart';

class ServiceWidget extends StatelessWidget {
  final int index;
  const ServiceWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 75,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecipePage(
                foodDescription: DummyData.items[index].foodDescription,
                foodIngredients: DummyData.items[index].foodIngredients,
                foodCalories: DummyData.items[index].foodCalories,
                foodReviews: DummyData.items[index].foodReviews,
                foodServing: DummyData.items[index].foodServing,
                foodTime: DummyData.items[index].foodTime,
                foodName: DummyData.items[index].foodName,
                heroTag: DummyData.items[index].foodName,
                imagePath: DummyData.items[index].foodImage,
                cardColor: DummyData.items[index].cardColor,
              ),
            ),
          );
        },
        child: Hero(
          tag: DummyData.items[index].foodName,
          child: SizedBox(
            height: Constants.cardHeight,
            child: Image.asset(
              DummyData.items[index].foodImage,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

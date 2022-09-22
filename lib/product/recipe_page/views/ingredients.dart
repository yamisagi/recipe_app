import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/text_styles.dart';

class IngredientsWidget extends StatelessWidget {
  const IngredientsWidget({
    Key? key,
    required this.foodIngredients,
  }) : super(key: key);

  final List foodIngredients;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: foodIngredients.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 4,
      ),
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.check),
          title: Text(
            foodIngredients[index],
            // overflow: TextOverflow.ellipsis,
            style: ProductTextStyles.recipeIngredientsTextStyle,
          ),
        );
      },
    );
  }
}

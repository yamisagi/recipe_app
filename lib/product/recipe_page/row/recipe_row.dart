import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/constants/text_styles.dart';

class RecipeRows extends StatelessWidget {
  final String title;
  final IconData icon;
  const RecipeRows({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Row(
        children: [
          Icon(icon, color: Constants.whiteColor),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: ProductTextStyles.recipeSubtitleTextStyle,
          ),
        ],
      ),
    );
  }
}

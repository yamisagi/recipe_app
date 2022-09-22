import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({
    Key? key,
    required this.cardColor,
  }) : super(key: key);

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: Constants.recipePageAppBarRadius,
      ),
      height: MediaQuery.of(context).size.height * 0.4,
    );
  }
}

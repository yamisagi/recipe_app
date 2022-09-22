import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/text_styles.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
    required this.foodDescription,
  }) : super(key: key);

  final List foodDescription;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: foodDescription.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text('${index + 1}', style: ProductTextStyles.recipeIndexTextStyle),
          title: Text(foodDescription[index],
              // overflow: TextOverflow.ellipsis,
              style: ProductTextStyles.recipeDescriptionTextStyle),
        );
      },
    );
  }
}

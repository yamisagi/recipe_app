import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/constants/text_styles.dart';

class IconRows extends StatelessWidget {
  final int index;
  final String text;
  final IconData icon;

  const IconRows({
    Key? key,
    required this.index,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.iconRowpadding,
      child: Row(
        children: [
          Icon(
            icon,
            color: Constants.iconColor,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(text, style: ProductTextStyles.iconRowTextStyle),
        ],
      ),
    );
  }
}

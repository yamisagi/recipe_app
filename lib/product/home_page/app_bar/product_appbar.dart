import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';

class ProductAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool isHomePage;
  const ProductAppBar({
    Key? key,
    required this.isHomePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          iconSize: Constants.iconSize,
          color: Constants.iconColor,
          onPressed: () {
            isHomePage ? null : Navigator.pop(context);
          },
          icon: isHomePage
              ? const Icon(Icons.sort)
              : const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: Constants.alertIconPadding,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: Constants.iconSize,
                color: Constants.iconColor,
              ),
            ),
          )
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

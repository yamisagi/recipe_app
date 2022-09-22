import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';

class ProductAppBar extends StatelessWidget with PreferredSizeWidget {
  const ProductAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          iconSize: 35,
          color: Constants.iconColor,
          onPressed: () {},
          icon: const Icon(Icons.sort),
        ),
        actions: [
          Padding(
            padding: Constants.alertIconPadding,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 35,
                color: Constants.iconColor,
              ),
            ),
          )
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

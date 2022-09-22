import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/constants/text_styles.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: Constants.searchPadding,
          hintText: Constants.searchHint,
          hintStyle: ProductTextStyles.searchTextStyle,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 18,
          ),
          filled: true,
          fillColor: Constants.whiteColor,
          enabledBorder: Constants.searchBorder,
          focusedBorder: Constants.searchBorder,
        ),
      ),
    );
  }
}

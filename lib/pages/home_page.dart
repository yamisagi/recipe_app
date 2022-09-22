import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/product/dummy_data.dart';
import 'package:recipe_ui/product/home_page/app_bar/product_appbar.dart';
import 'package:recipe_ui/product/home_page/cards/product_card.dart';
import 'package:recipe_ui/product/home_page/searchbar.dart';

import '../product/home_page/app_bar/bottom_bar.dart';
import '../product/home_page/rows/category_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      backgroundColor: Constants.scaffoldColor,
      appBar: const ProductAppBar(
        isHomePage: true,
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DummyData.dummyText1,
              DummyData.dummyText2,
              const SearchBar(),
              DummyData.dummyText3,
              const ProductCard(),
              const CategoriesRow(),
            ],
          ),
        ),
      ),
    );
  }
}

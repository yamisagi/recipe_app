import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/product/dummy_data.dart';
import 'package:recipe_ui/product/product_appbar.dart';
import 'package:recipe_ui/product/searchbar.dart';

import '../product/bottom_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      backgroundColor: Constants.scaffoldColor,
      appBar: const ProductAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DummyData.dummyText1,
          DummyData.dummyText2,
          const SearchBar(),
          DummyData.dummyText3,
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.transparent,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: DummyData.items.length,
              itemBuilder: ((context, index) {
                return Container(
                  width: 200,
                  height: 400,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: DummyData.items[index].cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

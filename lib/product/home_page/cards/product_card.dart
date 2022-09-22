import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/product/dummy_data.dart';
import 'package:recipe_ui/product/home_page/cards/hero_widget.dart';
import 'package:recipe_ui/product/home_page/rows/positioned_row.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      color: Colors.transparent,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: DummyData.items.length,
        itemBuilder: ((context, index) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: Constants.cardPadding,
                  decoration: BoxDecoration(
                    color: DummyData.items[index].cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                ServiceWidget(
                  index: index,
                ),
                PositionedRow(index: index),
              ],
            ),
          );
        }),
      ),
    );
  }
}

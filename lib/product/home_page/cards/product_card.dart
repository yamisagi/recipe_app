import 'package:flutter/material.dart';
import 'package:recipe_ui/pages/recipe_page.dart';
import 'package:recipe_ui/product/dummy_data.dart';
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
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: DummyData.items[index].cardColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 75,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipePage(
                            foodCalories: DummyData.items[index].foodCalories,
                            foodReviews: DummyData.items[index].foodReviews,
                            foodServing: DummyData.items[index].foodServing,
                            foodTime: DummyData.items[index].foodTime,
                            foodName: DummyData.items[index].foodName,
                            heroTag: DummyData.items[index].foodName,
                            imagePath: DummyData.items[index].foodImage,
                            cardColor: DummyData.items[index].cardColor,
                          ),
                        ),
                      );
                    },
                    child: Hero(
                      tag: DummyData.items[index].foodName,
                      child: SizedBox(
                        height: 160,
                        child: Image.asset(
                          DummyData.items[index].foodImage,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
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

import 'package:flutter/material.dart';
import 'package:recipe_ui/constants/consts.dart';
import 'package:recipe_ui/constants/text_styles.dart';
import 'package:recipe_ui/product/dummy_data.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.route,
                color: Constants.iconColor,
                size: Constants.bigIconSize,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: DummyData.dummyCategories.length,
              itemBuilder: ((context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.015,
                    horizontal: MediaQuery.of(context).size.width * 0.03,
                  ),
                  width: Constants.categoryBoxWidth,
                  height: Constants.categoryBoxHeight,
                  decoration: ProductTextStyles.categoryBoxDecoration,
                  child: Center(
                      child: Text(
                    DummyData.dummyCategories[index],
                    style: ProductTextStyles.categoryTextStyle,
                  )),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

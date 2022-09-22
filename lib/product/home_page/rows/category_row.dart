import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                color: Colors.white,
                size: 35,
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
                  width: 60,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 10, 48, 69),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                      child: Text(
                    DummyData.dummyCategories[index],
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
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

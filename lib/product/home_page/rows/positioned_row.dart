import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_ui/product/dummy_data.dart';
import 'package:recipe_ui/product/home_page/rows/icon_row.dart';

class PositionedRow extends StatelessWidget {
  final int index;
  const PositionedRow({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 150,
      right: 25,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              DummyData.items[index].foodName,
              style: GoogleFonts.nunito(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.005,
            ),
            height: 1,
            width: 120,
            color: Colors.white,
          ),
          Row(
            children: [
              IconRows(
                  index: index,
                  text: DummyData.items[index].foodTime,
                  icon: Icons.timelapse_sharp),
              const SizedBox(
                width: 10,
              ),
              IconRows(
                index: index,
                text: DummyData.items[index].foodServing,
                icon: Icons.people_alt_outlined,
              ),
            ],
          ),
          IconRows(
            index: index,
            text: DummyData.items[index].foodReviews,
            icon: Icons.star_border,
          )
        ],
      ),
    );
  }
}

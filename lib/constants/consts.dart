import 'package:flutter/material.dart';

class Constants {
  // ---------STRING CONSTANTS---------
  static const String ingredients = 'Ingredients';
  static const String directions = 'Directions';
  static const String searchHint = 'Search recipes';
  // ---------COLOR CONSTANTS---------
  static const Color scaffoldColor = Color(0xff2F5A71);
  static const Color iconColor = Colors.white;
  static const Color whiteColor = Colors.white;

  // ---------SIZES CONSTANTS---------
  static const double iconSize = 25;
  static const double bigIconSize = 35;
  static const double cardHeight = 160;
  static const double categoryBoxWidth = 60;
  static const double categoryBoxHeight = 100;
  // ---------OTHER CONSTANTS---------

  static const recipePageAppBarRadius = BorderRadius.only(
    bottomLeft: Radius.circular(30),
    bottomRight: Radius.circular(30),
  );
  static const EdgeInsets alertIconPadding = EdgeInsets.only(right: 15);
  static const EdgeInsets recipePadding = EdgeInsets.all(8);
  static const EdgeInsets searchPadding = EdgeInsets.all(8);
  static const EdgeInsets cardPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets iconRowpadding =
      EdgeInsets.symmetric(vertical: 2, horizontal: 5);

  static const SizedBox spacer = SizedBox(height: 10);
  static final Container divider = Container(
    height: 1,
    width: 180,
    color: Colors.white,
  );
  static const OutlineInputBorder searchBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
    borderSide: BorderSide(
      color: Colors.white,
    ),
  );
}

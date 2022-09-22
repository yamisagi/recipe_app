import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_ui/constants/consts.dart';

class ProductTextStyles{
   // ---------TEXT STYLE CONSTANTS---------
  static final headerTextStyle = GoogleFonts.nunito(
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: Constants.scaffoldColor,
  );
  static final BoxDecoration categoryBoxDecoration = BoxDecoration(
    color: const Color.fromARGB(255, 10, 48, 69),
    borderRadius: BorderRadius.circular(18),
  );
  static final TextStyle categoryTextStyle = GoogleFonts.nunito(
    color: Colors.white,
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle iconRowTextStyle = GoogleFonts.nunito(
    color: Colors.white,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle searchTextStyle = GoogleFonts.nunito(
    color: Colors.grey,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle recipeTitleTextStyle = GoogleFonts.nunito(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static final TextStyle recipeSubtitleTextStyle = GoogleFonts.nunito(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static final TextStyle recipeDescriptionTextStyle = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle recipeIndexTextStyle = GoogleFonts.nunito(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle recipeIngredientsTextStyle = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}


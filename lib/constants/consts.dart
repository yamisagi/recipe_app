import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  // ---------STRING CONSTANTS---------

  // ---------COLOR CONSTANTS---------
  static const Color scaffoldColor = Color(0xff2F5A71);
  static const Color iconColor = Colors.white;

  // ---------OTHER CONSTANTS---------
  static const EdgeInsets alertIconPadding = EdgeInsets.only(right: 15);
  static const SizedBox spacer = SizedBox(height: 10);
  static final Container divider = Container(
    height: 1,
    width: 180,
    color: Colors.white,
  );
  static final headerTextStyle = GoogleFonts.nunito(
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: Constants.scaffoldColor,
  );
}

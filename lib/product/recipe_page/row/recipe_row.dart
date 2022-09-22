import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeRows extends StatelessWidget {
  final String title;
  final IconData icon;
  const RecipeRows({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: GoogleFonts.nunito(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

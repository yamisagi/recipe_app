import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconRows extends StatelessWidget {
  final int index;
  final String text;
  final IconData icon;

  const IconRows({
    Key? key,
    required this.index,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          Text(
            text,
            style: GoogleFonts.nunito(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

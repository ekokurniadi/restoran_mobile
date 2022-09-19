import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeHelper {
  const ThemeHelper._();

  static Color primaryColor = const Color(0xFF47bab3);
  static Color secondaryColor = Colors.white;
  static Color blackColor = const Color(0xFF00053d);

  static TextStyle mediumTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: blackColor,
  );

  static TextStyle boldTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: blackColor,
  );
}

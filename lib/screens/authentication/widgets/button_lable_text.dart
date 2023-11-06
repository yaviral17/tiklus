import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buttonLableText({
  required String text,
  required Color color,
  required double fontSize,
  bool isBold = false,
}) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      color: color,
      fontSize: fontSize,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
    ),
  );
}

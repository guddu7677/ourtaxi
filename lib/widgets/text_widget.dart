import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textWidget(
    {required String text,
    FontWeight fontWeight = FontWeight.normal,
    double fontSize = 14}) {
  return Text(
    text,
    style: GoogleFonts.poppins(fontSize: fontSize, fontWeight: fontWeight),
  );
}

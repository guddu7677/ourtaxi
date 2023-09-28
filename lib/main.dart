import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_taxi/pages/login_page.dart';

void main() {
  runApp(const OurTaxi());
}

class OurTaxi extends StatelessWidget {
  const OurTaxi({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme=Theme.of(context).textTheme;
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(TextTheme),
      ),
      home:LoginPage()
    );
  }
}
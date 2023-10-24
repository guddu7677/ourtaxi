import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_taxi/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyAOOf5hlAk_iDen3y6xGAiyxYwvSw2uS4k",
    appId: "1:546581825435:android:9b3522991d1bb04812833e",
    messagingSenderId: "546581825435",
    projectId: "ourtaxy-d4511",
  ));
  runApp(const OurTaxi());
}

class OurTaxi extends StatelessWidget {
  const OurTaxi({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    return GetMaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(TextTheme),
        ),
        home: LoginPage());
  }
}

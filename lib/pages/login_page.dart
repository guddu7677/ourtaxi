// import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:our_taxi/widgets/login_widget.dart';
import 'package:our_taxi/widgets/our_intro_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // final countryPicker = const  FlCountryCodePicker();
  // CountryCode countryCode=CountryCode(name: 'India', code: "Ind", dialCode: "+91");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
         crossAxisAlignment:CrossAxisAlignment.start ,
          children: [

          ourIntroWidget(),
          SizedBox(height: 20,),
          logingWidget(),
          ],
        ),
      ),
    );
  }
}
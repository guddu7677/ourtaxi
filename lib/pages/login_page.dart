import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:our_taxi/widgets/login_widget.dart';
import 'package:our_taxi/widgets/our_intro_widget.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode countryCode =
      const CountryCode(name: 'India', code: "Ind", dialCode: "+91");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ourIntroWidget(),
              SizedBox(
                height: 50,
              ),
              logingWidget(countryCode, () async {
                final code = await countryPicker.showPicker(context: context);
                // Null check
                if (code != null) countryCode = code;
                setState(() {});
              }),
            ],
          ),
        ),
      ),
    );
  }
}

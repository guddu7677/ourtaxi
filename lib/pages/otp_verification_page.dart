import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:our_taxi/widgets/otp_verification_widget.dart';
import 'package:our_taxi/widgets/our_intro_widget.dart';
import 'package:our_taxi/widgets/piput_widget.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ourIntroWidget(),
                Positioned(
                  top: 20,
                  left: 30,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            otpVerificationWidget(),
          ],
        ),
      ),
    );
  }
}

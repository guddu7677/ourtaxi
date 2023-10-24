import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:our_taxi/pages/otp_verification_page.dart';
import 'package:our_taxi/utills/app_constants.dart';
import 'package:our_taxi/widgets/piput_widget.dart';
import 'package:our_taxi/widgets/text_widget.dart';
import 'package:pinput/pinput.dart';

Widget otpVerificationWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget(text: AppConstants.phoneVerification),
        textWidget(
            text: AppConstants.enterOtp,
            fontSize: 22,
            fontWeight: FontWeight.bold),
        SizedBox(
          height: 40,
        ),
        RoundedWithShadow(),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  children: [
                    TextSpan(
                        text: AppConstants.resendCode + " ",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.normal,
                            color: Colors.black)),
                    TextSpan(
                        text: "10 sec",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                        ))
                  ])),
        )
      ],
    ),
  );
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:our_taxi/controller/auth_controller.dart';
import 'package:pinput/pinput.dart';

class RoundedWithShadow extends StatefulWidget {
  const RoundedWithShadow({super.key});

  @override
  State<RoundedWithShadow> createState() => _RoundedWithShadowState();

  @override
  String toStringShort() => "Rounded With Shadow";
}

class _RoundedWithShadowState extends State<RoundedWithShadow> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  AuthController authController = Get.find<AuthController>();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black),
      ),
    );

    final cursur = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          width: 21,
          height: 1,
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: Color.fromRGBO(137, 146, 160, 1),
            borderRadius: BorderRadius.circular(8),
          )),
    );

    return Pinput(
      length: 6,
      controller: controller,
      focusNode: focusNode,
      onCompleted: (String input) {
        authController.verifyOtp(input);
      },
      defaultPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0599999845321),
              offset: Offset(0, 3),
              blurRadius: 16,
            )
          ])),
      showCursor: true,
      cursor: cursur,
    );
  }
}

import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  String userUid = "";
  var verId = "";
  int? ResendTokenId;
  bool phoneAuthCheck = false;
  dynamic cridentials;

  PhoneAuth(String phone) async {
    try {
      cridentials = null;
      await FirebaseAuth.instance.verifyPhoneNumber(
          phoneNumber: phone,
          timeout: Duration(seconds: 60),
          verificationCompleted: (PhoneAuthCredential credential) async {
            log("Completed" as num);
            cridentials = credential;
            await FirebaseAuth.instance.signInWithCredential(credential);
          },
          forceResendingToken: ResendTokenId,
          verificationFailed: (FirebaseAuthException e) {
            log("Faild" as num);
            if (e.code == "Invalid-phone-number") ;
          },
          codeSent: (String verificationId, int? resendToken) async {
            log("Code send" as num);
            verId = verificationId;
            ResendTokenId = resendToken;
          },
          codeAutoRetrievalTimeout: (String verificationId) {});
    } catch (e) {
      log("Error occred $e" as num);
    }
  }

  verifyOtp(String otpNumber) async {
    log("called" as num);
    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(verificationId: verId, smsCode: otpNumber);
    log("LoggedIn" as num);
    await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

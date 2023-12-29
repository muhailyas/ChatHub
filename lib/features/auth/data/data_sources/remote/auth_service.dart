import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static String verificationUID = '';

  Future<UserCredential?> signInWithPhoneNumber(String phone) async {
    Completer<UserCredential?> completer = Completer<UserCredential?>();

    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: "+91$phone",
        timeout: const Duration(seconds: 30),
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
          try {
            UserCredential userCredential =
                await _auth.signInWithCredential(phoneAuthCredential);
            completer.complete(userCredential);
          } catch (e) {
            completer.completeError(e);
          }
        },
        verificationFailed: (FirebaseAuthException exception) {
          completer.completeError(exception);
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          verificationUID = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          return completer.completeError(FirebaseAuthException(
            code: 'timeout',
            message: 'Auto-Retrieval Timeout!',
          ));
        },
      );
    } catch (e) {
      completer.completeError(e);
    }

    return completer.future;
  }

  Future<UserCredential> validateOtp(String otp, String verificationId) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: otp,
    );

    return await _auth.signInWithCredential(credential);
  }
}

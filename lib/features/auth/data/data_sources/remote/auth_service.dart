import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> signInWithPhoneNumber(String phone) async {
    Completer<UserCredential?> completer = Completer<UserCredential?>();

    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: "+91$phone",
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential phoneAuthCredential) async {
          print("Verification Completed");
          try {
            UserCredential userCredential =
                await _auth.signInWithCredential(phoneAuthCredential);
            completer.complete(userCredential);
          } catch (e) {
            completer.completeError(e);
          }
        },
        verificationFailed: (FirebaseAuthException exception) {
          print("Verification failed: ${exception.message}");
          completer.completeError(exception);
        },
        codeSent: (String verificationId, int? forceResendingToken) {
          print('Code Sent! Verification ID: $verificationId');
          // You might return something useful here if needed
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print('Auto-Retrieval Timeout! Verification ID: $verificationId');
          completer.completeError(FirebaseAuthException(
            code: 'timeout',
            message: 'Auto-Retrieval Timeout!',
          ));
        },
      );
    } catch (e) {
      print('Error during phone number verification: $e');
      completer.completeError(e);
    }

    return completer.future;
  }
}

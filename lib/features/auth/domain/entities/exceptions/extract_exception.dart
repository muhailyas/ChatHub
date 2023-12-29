import 'package:firebase_auth/firebase_auth.dart';

String? extractExceptionMessage(Exception? error) {
  if (error != null) {
    if (error is FirebaseException) {
      return error.message;
    } else {
      return error.toString();
    }
  }
  return null;
}

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  Future<User?> fetchUserAuthenticity() async {
    return FirebaseAuth.instance.currentUser;
  }
}

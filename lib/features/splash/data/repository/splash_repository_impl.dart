import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/features/splash/data/data_sources/remote/firebase_service.dart';
import 'package:chathub/features/splash/domain/repository/splash_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashRepositoryImpl implements SplashRepository {
  final FirebaseService _firebaseService;
  SplashRepositoryImpl(this._firebaseService);
  @override
  Future<DataState<User>> fetchCurrentUser() async {
    try {
      final user = await _firebaseService.fetchUserAuthenticity();
      if (user != null) {
        return DataSuccess(user);
      } else {
        return DataFailed(Exception());
      }
    } catch (e) {
      return DataFailed(Exception());
    }
  }
}

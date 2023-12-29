import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/features/auth/data/data_sources/remote/auth_service.dart';
import 'package:chathub/features/auth/data/models/auth_model.dart';
import 'package:chathub/features/auth/domain/entities/auth_entity.dart';
import 'package:chathub/features/auth/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationRepositoryImpl implements AuthRepositoy {
  final AuthService _authService = AuthService();
  @override
  Future<DataState<AuthEntity>> authenticate({required String mobile}) async {
    try {
      final UserCredential? userCredential =
          await _authService.signInWithPhoneNumber(mobile);
      if (userCredential != null) {
        return DataSuccess(
            AuthModel(mobile: mobile, userId: userCredential.user!.uid));
      } else {
        return DataFailed(Exception('something went wrong'));
      }
    } on Exception catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<AuthEntity>> verifyOtp({required String otp}) async {
    try {
      
      await _authService.validateOtp(otp, verificationUID);
      return DataSuccess(AuthEntity(mobile: '', userId: ''));
    } on FirebaseAuthException catch (e) {
      return DataFailed(e);
    }
  }
}

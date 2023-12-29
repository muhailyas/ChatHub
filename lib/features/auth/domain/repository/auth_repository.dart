import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/features/auth/domain/entities/auth_entity.dart';

abstract class AuthRepositoy {
  Future<DataState<AuthEntity>> authenticate({required String mobile});
  Future<DataState<AuthEntity>> verifyOtp({required String otp});
}

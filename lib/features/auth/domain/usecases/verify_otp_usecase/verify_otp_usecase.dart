import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/core/usecases/usecases.dart';
import 'package:chathub/features/auth/domain/entities/auth_entity.dart';
import 'package:chathub/features/auth/domain/repository/auth_repository.dart';
import 'package:chathub/features/auth/domain/usecases/authentication_params.dart';
import '../../entities/exceptions/validation_exception.dart';

class VerifyOtpUseCase
    implements UseCase<DataState<AuthEntity>, VerificationParams> {
  final AuthRepositoy _authRepositoy;
  VerifyOtpUseCase(this._authRepositoy);
  @override
  Future<DataState<AuthEntity>> call({VerificationParams? params}) {
    return _authRepositoy.verifyOtp(otp: params!.otp);
  }

  void validateInput(String otp) {
    if (otp.isEmpty) {
      throw ValidationException('Otp is required.');
    } else if (otp.length < 6) {
      throw ValidationException('Otp is must be 6 letters');
    }
  }
}

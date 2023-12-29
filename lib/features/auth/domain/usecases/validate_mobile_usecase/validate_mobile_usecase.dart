import 'package:chathub/core/usecases/usecases.dart';
import 'package:chathub/features/auth/domain/entities/exceptions/validation_exception.dart';
import 'package:chathub/features/auth/domain/usecases/authentication_params.dart';

class ValidateMobileUseCase implements UseCase<void, AuthenticationParams> {
  @override
  Future<void> call({AuthenticationParams? params}) async {
    validateInput(AuthenticationParams(mobile: params!.mobile));
  }

  void validateInput(AuthenticationParams? params) {
    String pattern = r'^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$';
    RegExp regex = RegExp(pattern);

    if (params == null ||
        params.mobile.isEmpty) {
      throw ValidationException('Mobile number is required.');
    } else if (!regex.hasMatch(params.mobile)) {
      throw ValidationException('Enter a valid phone number.');
    }
  }
}

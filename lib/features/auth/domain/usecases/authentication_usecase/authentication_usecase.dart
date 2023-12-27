import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/core/usecases/usecases.dart';
import 'package:chathub/features/auth/domain/entities/auth_entity.dart';
import 'package:chathub/features/auth/domain/entities/exceptions/validation_exception.dart';
import 'package:chathub/features/auth/domain/repository/auth_repository.dart';
import 'package:chathub/features/auth/domain/usecases/authentication_params.dart';

class AuthenticationUseCase
    implements UseCase<DataState<AuthEntity>, AuthenticationParams> {
  final AuthRepositoy _authRepositoy;
  AuthenticationUseCase(this._authRepositoy);

  @override
  Future<DataState<AuthEntity>> call({AuthenticationParams? params}) {
    validateInput(params!);
    return _authRepositoy.authenticate(mobile: params.mobile);
  }

  void validateInput(AuthenticationParams params) {
    String pattern = r'^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$';
    RegExp regex = RegExp(pattern);

    if (params.mobile.isEmpty) {
      throw ValidationException('Mobile number is required.');
    } else if (!regex.hasMatch(params.mobile)) {
      throw ValidationException('Enter a valid phone number.');
    }
  }
}

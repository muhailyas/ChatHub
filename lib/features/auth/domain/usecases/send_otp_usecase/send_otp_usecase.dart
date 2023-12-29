import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/core/usecases/usecases.dart';
import 'package:chathub/features/auth/domain/entities/auth_entity.dart';
import 'package:chathub/features/auth/domain/repository/auth_repository.dart';
import 'package:chathub/features/auth/domain/usecases/authentication_params.dart';

class SendOtpUseCase
    implements UseCase<DataState<AuthEntity>, AuthenticationParams> {
  final AuthRepositoy _authRepositoy;
  SendOtpUseCase(this._authRepositoy);

  @override
  Future<DataState<AuthEntity>> call({AuthenticationParams? params}) {
    return _authRepositoy.authenticate(mobile: params!.mobile);
  }
}

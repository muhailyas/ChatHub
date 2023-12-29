import 'package:chathub/core/resources/data_state.dart';
import 'package:chathub/core/usecases/usecases.dart';
import 'package:chathub/features/splash/domain/repository/splash_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserAuthenticityCheckUseCase implements UseCase<void, void> {
  final SplashRepository _splashRepository;
  UserAuthenticityCheckUseCase(this._splashRepository);
  @override
  Future<DataState<User?>> call({void params}) async {
    return _splashRepository.fetchCurrentUser();
  }
}

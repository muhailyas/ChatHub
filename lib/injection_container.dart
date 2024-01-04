import 'package:chathub/features/auth/data/data_sources/remote/auth_service.dart';
import 'package:chathub/features/auth/data/repository/auth_repository_impl.dart';
import 'package:chathub/features/auth/domain/usecases/send_otp_usecase/send_otp_usecase.dart';
import 'package:chathub/features/auth/domain/usecases/validate_mobile_usecase/validate_mobile_usecase.dart';
import 'package:chathub/features/auth/domain/usecases/verify_otp_usecase/verify_otp_usecase.dart';
import 'package:chathub/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:chathub/features/splash/data/data_sources/remote/firebase_service.dart';
import 'package:chathub/features/splash/data/repository/splash_repository_impl.dart';
import 'package:chathub/features/splash/domain/usecases/user_authenticity_check_usecase.dart';
import 'package:chathub/features/splash/presentation/bloc/splash/splash_bloc.dart';
import 'package:get_it/get_it.dart';

class DependencyInjection {
  static GetIt sl = GetIt.instance;

  static Future<void> initializeDependencies() async {
    // Dependencies
    sl.registerSingleton<AuthService>(AuthService());
    sl.registerSingleton<FirebaseService>(FirebaseService());

    sl.registerSingleton<AuthenticationRepositoryImpl>(
        AuthenticationRepositoryImpl(sl<AuthService>()));
    sl.registerSingleton<SplashRepositoryImpl>(
        SplashRepositoryImpl(sl<FirebaseService>()));

    // usecases
    sl.registerSingleton<ValidateMobileUseCase>(ValidateMobileUseCase());
    sl.registerSingleton<VerifyOtpUseCase>(
        VerifyOtpUseCase(sl<AuthenticationRepositoryImpl>()));
    sl.registerSingleton<SendOtpUseCase>(
        SendOtpUseCase(sl<AuthenticationRepositoryImpl>()));
    sl.registerSingleton<UserAuthenticityCheckUseCase>(
        UserAuthenticityCheckUseCase(sl<SplashRepositoryImpl>()));

    // bloc
    sl.registerFactory<AuthBloc>(() => AuthBloc(sl<SendOtpUseCase>(),
        sl<VerifyOtpUseCase>(), sl<ValidateMobileUseCase>()));
    sl.registerFactory<SplashBloc>(
        () => SplashBloc(sl<UserAuthenticityCheckUseCase>()));
  }
}

import 'package:chathub/config/routes/route_generator.dart';
import 'package:chathub/config/theme/theme.dart';
import 'package:chathub/features/auth/data/repository/auth_repository_impl.dart';
import 'package:chathub/features/auth/domain/usecases/send_otp_usecase/send_otp_usecase.dart';
import 'package:chathub/features/auth/domain/usecases/validate_mobile_usecase/validate_mobile_usecase.dart';
import 'package:chathub/features/auth/domain/usecases/verify_otp_usecase/verify_otp_usecase.dart';
import 'package:chathub/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:chathub/features/splash/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ChatHub());
}

class ChatHub extends StatelessWidget {
  const ChatHub({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
                SendOtpUseCase(AuthenticationRepositoryImpl()),
                VerifyOtpUseCase(AuthenticationRepositoryImpl()),
                ValidateMobileUseCase()),
          ),
        ],
        child: MaterialApp(
          title: 'ChatHub',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) =>
              RouteGenerator().onGenerateRoute(settings),
          theme: theme(),
          home: const ScreenSplash(),
        ),
      ),
    );
  }
}

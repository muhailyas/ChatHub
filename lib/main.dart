import 'package:chathub/config/routes/route_generator.dart';
import 'package:chathub/config/theme/theme.dart';
import 'package:chathub/core/responsive/responsive_width_hieght.dart';
import 'package:chathub/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:chathub/features/auth/presentation/bloc/bloc/timer_bloc.dart';
import 'package:chathub/features/splash/presentation/bloc/splash/splash_bloc.dart';
import 'package:chathub/features/splash/presentation/pages/splash_screen.dart';
import 'package:chathub/injection_container.dart';
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
  await DependencyInjection.initializeDependencies();

  runApp(const ChatHub());
}

class ChatHub extends StatelessWidget {
  const ChatHub({super.key});

  @override
  Widget build(BuildContext context) {
    Screen.init(context);
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => DependencyInjection.sl(),
          ),
          BlocProvider<SplashBloc>(
            create: (context) => DependencyInjection.sl(),
          ),
          BlocProvider<TimerBloc>(
            create: (context) => TimerBloc(),
          )
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

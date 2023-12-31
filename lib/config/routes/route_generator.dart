import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/features/auth/presentation/pages/mobile_field/mobile_Field.dart';
import 'package:chathub/features/auth/presentation/pages/onboard/onboard.dart';
import 'package:chathub/features/auth/presentation/pages/otp/otp.dart';
import 'package:chathub/features/auth/presentation/pages/terms_of_service/terms_of_service.dart';
import 'package:chathub/features/home/presentation/pages/home.dart';
import 'package:chathub/features/splash/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboard:
        return MaterialPageRoute(
          builder: (context) => const ScreenOnboard(),
        );
      case Routes.splash:
        return MaterialPageRoute(
          builder: (context) => const ScreenSplash(),
        );
      case Routes.mobileField:
        return MaterialPageRoute(
          builder: (context) => const MobileFieldScreen(),
        );
      case Routes.otp:
        return MaterialPageRoute(
          builder: (context) => const ScreenOtp(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const ScreenHome(),
        );
      case Routes.termsOfUse:
        return MaterialPageRoute(
          builder: (context) => const ScreenTermsOfService(),
        );
      default:
        return _errorScreen();
    }
  }

  static Route<dynamic> _errorScreen() {
    return MaterialPageRoute(
      builder: (ctx) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('Error while navigating')),
        );
      },
    );
  }
}

import 'package:chathub/config/routes/route_generator.dart';
import 'package:chathub/config/routes/routes.dart';
import 'package:chathub/config/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ChatHub());
}

class ChatHub extends StatelessWidget {
  const ChatHub({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        title: 'ChatHub',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        onGenerateRoute: (settings) =>
            RouteGenerator().onGenerateRoute(settings),
        theme: theme(),
      ),
    );
  }
}

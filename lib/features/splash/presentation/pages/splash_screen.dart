import 'package:chathub/config/routes/routes.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  ScreenSplashState createState() => ScreenSplashState();
}

class ScreenSplashState extends State<ScreenSplash>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    // Initialize animation controller
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    // Create opacity animation with easing curve (easeIn)
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Animation is complete, initiate the navigation
        Navigator.pushNamedAndRemoveUntil(
            context, Routes.onboard, (route) => false);
      }
    });

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    // Dispose of the animation controller to avoid memory leaks
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _opacityAnimation,
          child: Image.asset(
            "assets/Chat hub logo.png",
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../../../core/colors/colors.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  const CircularProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      backgroundColor: CustomColor.secondaryColor,
      color: CustomColor.secondarySaffron,
    );
  }
}

import 'package:chathub/core/constants/strings.dart';
import 'package:flutter/material.dart';

class ScreenTermsOfService extends StatelessWidget {
  const ScreenTermsOfService({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.termsOfServiceTitle),
      ),
      body: const Center(
        child: Text(AppStrings.onboardTermsText),
      ),
    );
  }
}

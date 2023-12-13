import 'package:estikar_app/const/colors.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.orange,
      body: Center(
        child: Image.asset(
          'assets/png/logoEst.png',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

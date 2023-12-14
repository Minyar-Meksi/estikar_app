import 'package:estikar_app/const/colors.dart';
import 'package:estikar_app/screens/welcome.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();

    // Add a delay using Future.delayed to simulate a splash screen timeout
    Future.delayed(Duration(seconds: 2), () {
      // Navigate to the welcome screen after the timeout
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Welcome()),
      );
    });
  }

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

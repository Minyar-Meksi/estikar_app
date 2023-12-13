import 'package:estikar_app/const/colors.dart';
import 'package:estikar_app/widgets/logo.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/png/car (1).png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Logo(),
              const SizedBox(
                height: 380,
              ),
              Container(
                padding: const EdgeInsets.only(left: 24),
                child: const Text(
                  'Estimate your cars price anytime',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Popping",
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              InkWell(
                 onTap: () {
              // Handle the tap action here
            },
                child: Container(
                  alignment: Alignment.center,
                  height: 64,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.orange),
                  child: const Text(
                    'Start Now',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Popping",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


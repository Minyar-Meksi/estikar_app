import 'package:estikar_app/const/colors.dart';
import 'package:flutter/material.dart';

class ButtonOrg extends StatelessWidget {
  const ButtonOrg({
    super.key, required this.btnText,
  });
   final String btnText ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.orange),
      child: const Text(
        "Sign Up",
        style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: "poppins"),
      ),
    );
  }
}

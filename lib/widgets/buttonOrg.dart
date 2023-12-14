import 'package:estikar_app/const/colors.dart';
import 'package:flutter/material.dart';

class ButtonOrg extends StatelessWidget {
  const ButtonOrg({
    Key? key,
    required this.btnText,
  }) : super(key: key);

  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.orange,
      ),
      child: Text(
        btnText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: "poppins",
        ),
      ),
    );
  }
}

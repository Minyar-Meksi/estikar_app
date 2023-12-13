import 'package:estikar_app/const/colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      decoration: BoxDecoration(
        color: AppColors.orange,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.asset(
        'assets/png/hcarr.png',
       
        fit: BoxFit.cover,
        alignment: Alignment.centerRight,
      ),
    );
  }
}

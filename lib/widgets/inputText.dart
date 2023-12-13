import 'package:flutter/material.dart';

class Input_box extends StatelessWidget {
  const Input_box( {
    super.key, required this.label, this.iconData,
  });
final String label;
final IconData? iconData;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 345,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
            )
          ]),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.only(left: 20, bottom: 11, top: 11, right: 15),
          border: InputBorder.none,
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(
            iconData,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

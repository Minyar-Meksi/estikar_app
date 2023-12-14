import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key, required this.label});
  final String label;
  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? dropdownValue; // Change to nullable

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontFamily: "poppins",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Container(
          width: 108,
          height: 50,
          padding: EdgeInsets.only(right: 8.0),
          decoration: BoxDecoration(
            color: Color(0xFFDCDCDC),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: DropdownButton<String>(
            value: dropdownValue,
            hint: Text("Select"), // Provide a hint
            focusColor: Colors.black,
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            underline: Container(),
            dropdownColor: Color(0xFFDCDCDC),
            borderRadius: BorderRadius.circular(10.0),
            isExpanded: true,
            padding: EdgeInsets.only(left: 15.0),
            style: TextStyle(
              fontFamily: "poppins",
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF8C9199),
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['Renault', 'BMW', 'Mercedes']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

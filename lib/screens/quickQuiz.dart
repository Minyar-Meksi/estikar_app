import 'package:estikar_app/const/colors.dart';
import 'package:estikar_app/widgets/DropDown.dart';
import 'package:flutter/material.dart';

class QuickQuiz extends StatefulWidget {
  const QuickQuiz({Key? key}) : super(key: key);

  @override
  State<QuickQuiz> createState() => _QuickQuizState();
}

class _QuickQuizState extends State<QuickQuiz> {
  String? condition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Quick Quiz",
          style: TextStyle(
            fontFamily: "poppins",
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: AppColors.orange,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 24.0, left: 24.0, top: 30),
        child: Column(
          children: [
            Row(
              children: [
                DropDown(label: "Brand"),
                SizedBox(
                  width: 10,
                ),
                DropDown(label: "Model"),
                SizedBox(
                  width: 10,
                ),
                DropDown(label: "Version"),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Condition",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 20),
                Row(
                  children: [
                    Radio<String>(
                      value: 'new',
                      groupValue: condition,
                      onChanged: (value) {
                        setState(() {
                          condition = value;
                        });
                      },
                    ),
                    Text('New'),
                    SizedBox(width: 20),
                    Radio<String>(
                      value: 'used',
                      groupValue: condition,
                      onChanged: (value) {
                        setState(() {
                          condition = value;
                        });
                      },
                    ),
                    Text('Used'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:estikar_app/const/colors.dart';
import 'package:estikar_app/screens/quickQuiz.dart';
import 'package:estikar_app/screens/signup.dart';
import 'package:estikar_app/widgets/buttonOrg.dart';
import 'package:estikar_app/widgets/inputText.dart';
import 'package:estikar_app/widgets/logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bg,
        body: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(
              height: 60,
            ),
            const Logo(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Login ',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            Text(
              'Welcome to Estikar ',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(
              height: 60,
            ),
            InputBox(
                label: 'Username', iconData: CupertinoIcons.profile_circled),
            const SizedBox(
              height: 20,
            ),
            const InputBox(
              label: "Password",
              iconData: CupertinoIcons.lock_fill,
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                // Handle the tap action here
              },
              child: Text(
                "Forgot Password ? ",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            InkWell(
                onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const QuickQuiz(),
                      ),
                    ),
                child: ButtonOrg(btnText: "Login")),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(
                      color: Color(0xFFC4C4C4),
                      fontFamily: "poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ),
                    ),
              
                  child: Text("Sign Up ",
                      style: TextStyle(
                          color: AppColors.orange,
                          fontFamily: "poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                )
              ],
            )
          ]),
        ));
  }
}

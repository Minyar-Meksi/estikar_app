import 'package:estikar_app/const/colors.dart';
import 'package:estikar_app/widgets/buttonOrg.dart';
import 'package:estikar_app/widgets/inputText.dart';
import 'package:estikar_app/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Logo(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "poppins",
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: Text(
                'Unlock a personalized experience by creating your own account. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "poppins",
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Input_box(
                label: 'Username', iconData: CupertinoIcons.profile_circled),
            const SizedBox(
              height: 20,
            ),
            const Input_box(
              label: "Email",
              iconData: CupertinoIcons.mail,
            ),
            const SizedBox(
              height: 20,
            ),
            const Input_box(
              label: "Password",
              iconData: CupertinoIcons.lock_fill,
            ),
            const SizedBox(
              height: 30,
            ),
            ButtonOrg(btnText: 'Sign Up',),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () {
                  // Handle the tap action here
                },
                child: Text(
                  "Proceed as a Guest",
                  style: TextStyle(
                      color: AppColors.orange,
                      fontFamily: "poppins",
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 1,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4),
                      )),
                  Text(
                    'Or',
                    style: TextStyle(
                        color: Color(0xFFC4C4C4),
                        fontFamily: "poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 1,
                    width: 160,
                    decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text('Sign Up with',
                style: TextStyle(
                    color: AppColors.orange,
                    fontFamily: "poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/png/facebook(1).png",
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  width: 28,
                ),
                Image.asset(
                  "assets/png/instagram(1).png",
                  height: 25,
                  width: 25,
                ),
                const SizedBox(
                  width: 18,
                ),
                Image.asset(
                  "assets/png/google (2).png",
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account ? ",
                  style: TextStyle(
                      color: Color(0xFFC4C4C4),
                      fontFamily: "poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                  onTap: () {
                    // Handle the tap action here
                  },
                  child: const Text("Sign In ",
                      style: TextStyle(
                          color: AppColors.orange,
                          fontFamily: "poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


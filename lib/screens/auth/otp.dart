import 'package:astrokapish/screens/auth/sign_up.dart';
import 'package:astrokapish/utils/common_style.dart';
import 'package:astrokapish/utils/field_val.dart';
import 'package:astrokapish/utils/urlname_navigation.dart';
import 'package:flutter/material.dart';

import '../home/bottom_menu.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            heightSizedBox(30.0),
            Center(
              child: SizedBox(
                // height: 420,
                width: 580,
                // constraints: BoxConstraints(minWidth: 800),
                // color: Colors.red,
                child: Card(
                  color: Colors.white,
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const Text(
                          "Sign In Now",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        heightSizedBox(15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't Have an Account ?  ",
                              style: TextStyle(fontSize: 15),
                            ),
                            InkWell(
                              splashColor: Colors.white,
                              hoverColor: Colors.white,
                              highlightColor: Colors.red,
                              onTap: () {
                                navigationPush(context, SignUpScreen());
                              },
                              child: const Text(
                                "SignUp !",
                                style: TextStyle(color: Colors.amber),
                              ),
                            )
                          ],
                        ),
                        heightSizedBox(10.0),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                "assets/logo/logo.png",
                                height: 175,
                                width: 175,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                        heightSizedBox(10.0),
                        Row(
                          children: [
                            Text("Otp send Successfully"),
                          ],
                        ),
                        heightSizedBox(15.0),
                        const TxtField(
                          hintText: "Enter OTP",
                          // decoration: BoxDecoration(border: Border()),
                        ),
                        heightSizedBox(15.0),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(550, 35),
                                backgroundColor:
                                    Color.fromARGB(255, 18, 183, 62)),
                            onPressed: () {},
                            child: const Text("Send Otp")),
                        heightSizedBox(15.0),
                        Container(
                          height: 0.5,
                          width: 525,
                          color: Colors.black45,
                        ),
                        heightSizedBox(15.0),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(550, 35),
                                backgroundColor:
                                    const Color.fromARGB(255, 7, 201, 255)),
                            onPressed: () {},
                            child: const Text("Resend Otp")),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            heightSizedBox(50.0),
            const BottomMenu()
          ],
        ),
      ),
    );
  }
}

import 'package:astrokapish/screens/auth/login.dart';
import 'package:astrokapish/utils/common_style.dart';
import 'package:astrokapish/utils/field_val.dart';
import 'package:astrokapish/utils/urlname_navigation.dart';
import 'package:flutter/material.dart';

import '../../common/stepper.dart';
import '../home/bottom_menu.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});
  int activeIndex = 1;

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
                height: null,
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
                              "You Have an Account?  ",
                              style: TextStyle(fontSize: 15),
                            ),
                            InkWell(
                              splashColor: Colors.white,
                              hoverColor: Colors.white,
                              highlightColor: Colors.red,
                              onTap: () {
                                navigationPush(context, const LoginScreen());
                              },
                              child: const Text(
                                "SignIp !",
                                style: TextStyle(color: Colors.amber),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                // Add your InkWell's functionality here
                              },
                              child: Container(
                                padding: const EdgeInsets.all(
                                    16.0), // Add padding for the content
                                decoration: const BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors
                                          .blue, // Border color for the top side
                                      width:
                                          2.0, // Border width for the top side
                                    ),
                                    left: BorderSide(
                                      color: Colors
                                          .blue, // Border color for the left side
                                      width:
                                          2.0, // Border width for the left side
                                    ),
                                    right: BorderSide(
                                      color: Colors
                                          .blue, // Border color for the right side
                                      width:
                                          2.0, // Border width for the right side
                                    ),
                                  ),
                                ),
                                child: const Center(
                                  child: Text('Astrologer'),
                                ),
                              ),
                            )
                          ],
                        ),
                        heightSizedBox(10.0),
                        ClipOval(
                          child: Image.asset(
                            "assets/logo/logo.png",
                            height: 175,
                            width: 175,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Stepers(activeBtn: "$activeIndex"),
                        heightSizedBox(15.0),
                        const TxtField(
                          hintText: "Name",
                        ),
                        heightSizedBox(10.0),
                        const TxtField(
                          hintText: "Email",
                        ),
                        heightSizedBox(10.0),
                        const TxtField(
                          hintText: "Mobile NO",
                        ),
                        heightSizedBox(10.0),
                        heightSizedBox(15.0),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(550, 35),
                                backgroundColor: Colors.amber),
                            onPressed: () {},
                            child: const Text("Send Otp")),
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

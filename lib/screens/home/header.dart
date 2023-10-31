import 'package:flutter/material.dart';

import '../../constrants.dart';
import '../../utils/common_style.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kPadding),
      // constraints: BoxConstraints(maxWidth: kMaxWidth),
      width: MediaQuery.of(context).size.width,

      height: 80,
      color: Colors.white,

      child: Column(
        children: [
          Row(
            children: [
              widthSizedBox(100.0),
              const Text(
                "AstroKapish",
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              // Image.asset(
              //   "images/logo.jpg",
              //   fit: BoxFit.fitWidth,
              //   height: 500,
              //   width: width(context) / 3,
              // ),
              const Spacer(),
              ChatBtn(
                  btnWidth: 200,
                  btnName: "Chat With Astrologer",
                  onpressed: () {}),
              widthSizedBox(20.0),
              ChatBtn(
                  btnWidth: 200,
                  btnName: "Call With Astrologer",
                  onpressed: () {}),
              widthSizedBox(20.0),
              ChatBtn(
                  backgroundColor: Colors.amberAccent,
                  textColor: Colors.black,
                  borderColor: Colors.black54,
                  btnName: "Login",
                  onpressed: () {}),
              widthSizedBox(50.0)
            ],
          ),
        
        ],
      ),
    );
  }
}

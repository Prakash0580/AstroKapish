
import 'package:flutter/material.dart';

import '../../constrants.dart';
import '../../utils/common_style.dart';

class Predication extends StatelessWidget {
  const Predication({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: width(context),
      height: null,
      color: Colors.amberAccent,
      child: Column(
        children: [
          heightSizedBox(10.0),
          const Text(
            "Accurate Predictions",
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          heightSizedBox(10.0),
          Text(
            Longtext1,
            style: const TextStyle(
                fontSize: 18.0, fontWeight: FontWeight.w500, height: 1.5),
          ),
          heightSizedBox(15.0),
          const Boxes(
            text1: "Love, marriage and other relationship problems",
            text2: "Kalsarp yog and kundali grahana yog",
          ),
          heightSizedBox(15.0),
          const Boxes(
            text1: "Married life, divorce and disturbed relations",
            text2: "Business, career, and money problems",
          ),
          heightSizedBox(15.0),
          const Boxes(
              text1: "Family conflicts and property issues",
              text2: "Uncertain and unstable financial conditions"),
          heightSizedBox(10.0),
           Text(
            Longtext2,
           
            style: const TextStyle(
                fontSize: 18.0, fontWeight: FontWeight.w500, height: 1.5),
          ),
       
          heightSizedBox(30.0),
        ],
      ),
    );
  }
}

class Boxes extends StatelessWidget {
  final String text1, text2;
  const Boxes({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(20.0),
          width: 500,
          color: Colors.grey.shade100,
          child: Center(
            child: Text(
              text1,
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        widthSizedBox(10.0),
        Container(
          padding: const EdgeInsets.all(20.0),
          width: 500,
          color: Colors.grey.shade100,
          child: Center(
            child: Text(
              text2,
              // "Kalsarp yog and kundali grahana yog",
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}

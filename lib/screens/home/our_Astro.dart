
import 'package:flutter/material.dart';

import '../../constrants.dart';
import '../../utils/common_style.dart';

class OurAstrologers extends StatelessWidget {
  const OurAstrologers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width(context),
        height: null,
        color: Colors.white,
        child: Column(
          children: [
            heightSizedBox(50.0),
            const Text(
              "Our Astrologers",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            heightSizedBox(10.0),
            Text(
              constultText,
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
            heightSizedBox(10.0),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 18.0, fontWeight: FontWeight.w500, height: 1.5),
              overflow: TextOverflow.visible,
            ),
            heightSizedBox(20.0),
            const Text(
              "Why Talk To Our Astrologers?",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const RowBox(
                        text: "550+ expert astrologers",
                      ),
                      widthSizedBox(10.0),
                      const RowBox(
                        text: "Get a better understanding & guidance",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const RowBox(
                      text: "Personalized solutions on the phone",
                    ),
                    widthSizedBox(10.0),
                    const RowBox(
                      text: "Private and confidential",
                    ),
                  ],
                ),
                heightSizedBox(15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const RowBox(
                      text: "Live astrology consultation anytime, anywhere",
                    ),
                    widthSizedBox(10.0),
                    const RowBox(
                      text: "Instant solutions in difficult time",
                    ),
                  ],
                ),
              ],
            ),
            heightSizedBox(50.0),
          ],
        ));
  }
}

class RowBox extends StatelessWidget {
  final String text;
  const RowBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: 500,
      color: Colors.grey.shade200,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

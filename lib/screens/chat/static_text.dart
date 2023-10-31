import 'package:flutter/material.dart';

import '../../utils/common_style.dart';

class HelpText extends StatelessWidget {
  const HelpText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width(context),
        height: null,
        color: Colors.grey.shade100,
        child: Column(
          children: [
            heightSizedBox(50.0),
            const Text(
              "How Chatting with an astrologer can help you?",
              style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            ),
            heightSizedBox(10.0),
            const Text(
              "Best online astrology consultation",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
            ),
            heightSizedBox(10.0),
            const Text(
              "There’s literally no point in overthinking about your concerns when the solution to them is just a call away. Astrotalk brings to you a pool of over 500+\nastrologers with whom you can contact on chat and share with them your problems across all aspects of life including love, finance, Vastu, career, luck,\nmarriage and so on. Simply put, life is a cocktail of highs and lows, and while we enjoy the good times, the bad times, though they teach us a lot, can also\nleave us worried, depressed and sad. Such times can also hamper the relationship we share with other people in our lives, and we are sure that you wouldn’t\nwant that to happen for yourself. ",
              style: TextStyle(
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

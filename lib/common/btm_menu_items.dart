import 'package:flutter/material.dart';

import '../utils/common_style.dart';
import '../utils/urlname_navigation.dart';

List importantItemLst = [
  {"text": "vedic"},
  {"text": "Prashana"},
  {"text": "Psychologist"},
  {"text": "Lal Kitab"},
  {"text": "Face Reading"},
  {"text": "Nadi"},
  {"text": "Numerology"},
  {"text": "Tarot Card"},
  {"text": "Vastu Shastra"},
  {"text": "Palmistry"},
  {"text": "Lo Shu Grid"},
  {"text": "Phychic"},
  {"text": "Life Coach"},
];

List btmHoroScopeLst = [
  {"text": "Horoscope 2023"},
  {"text": "Today Horoscope"},
  {"text": "Yesterday Horoscope"},
  {"text": "Tomorrow's Horoscope"},
  {"text": "Weekly Horoscope"},
  {"text": "Monthly Horoscope"},
  {"text": "Yearly Horoscope"},
];

List btmShubhMuhuratLst = [
  {"text": "Annanprashan Muhurat 2023"},
  {"text": "Naamkaran Muhurat 2023"},
  {"text": "Car/Bike Muhurat 2023"},
  {"text": "Marriage Muhurat 2023"},
  {"text": "Gold Buying Muhurat 2023"},
  {"text": "Bhoomi Pujan Muhurat 2023"},
  {"text": "Griha Pravesh Muhurat 2023"},
  {"text": "Mundan Muhurat 2023"},
];

List btmCorpInfoItemLst = [
  {"text": "vedic"},
  {"text": "Prashana"},
  {"text": "Psychologist"},
  {"text": "Lal Kitab"},
  {"text": "Face Reading"},
  {"text": "Nadi"},
  {"text": "Numerology"},
  {"text": "Tarot Card"},
  {"text": "Vastu Shastra"},
  {"text": "Palmistry"},
  {"text": "Lo Shu Grid"},
  {"text": "Phychic"},
  {"text": "Life Coach"},
];

List btmCorpInfoItemLst1 = [
  {"text": "Refund & Cancellation Policy"},
  {"text": "Terms & Conditions"},
  {"text": "Privacy Policy"},
];




class BottomTextBtn extends StatelessWidget {
  final String text;
  final Function()? onTap;

  final Widget? child;
  const BottomTextBtn({
    super.key,
    required this.text,
    this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: onTap ?? () => navigationPush(context, child!),
        child: Row(
          children: [
            const Icon(
              Icons.arrow_back_ios,
              size: 16,
              color: Colors.white70,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}

class HeadingTxt extends StatelessWidget {
  final String text;
  const HeadingTxt({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        heightSizedBox(5.0),
        Container(
          color: Colors.amber,
          height: 2,
          width: 40,
        )
      ],
    );
  }
}

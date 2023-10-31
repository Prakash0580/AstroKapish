import 'package:astrokapish/common/btm_menu_items.dart';
import 'package:astrokapish/constrants.dart';
import 'package:flutter/material.dart';

import '../../utils/common_style.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });
  // const EdgeInsets.only(left: 150, right: 150, top: 10, bottom: 10),
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff454545),
      padding: const EdgeInsets.all(25.0),
      width: width(context),
      height: null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AboutAstroKapish(),
          heightSizedBox(15.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Horoscope(),

                  ImportantLinks(),
                  // const Spacer(),
                  ImportantLinks2(),
                  // const Spacer(),
                  CorporateInfo2(),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CorporateInfo2 extends StatelessWidget {
  const CorporateInfo2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingTxt(text: "Corporate Info"),
        heightSizedBox(30.0),
        for (var i = 0; i < btmCorpInfoItemLst.length; i++)
          BottomTextBtn(text: btmCorpInfoItemLst[i]["text"], onTap: () {}),

        // heightSizedBox(30.0),
        // BottomTextBtn(text: "Disclaimer", onTap: () {}),
        // BottomTextBtn(text: "About Us", onTap: () {}),
        // BottomTextBtn(text: "Pricing Policy", onTap: () {}),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSizedBox(30.0),
            const HeadingTxt(text: "Contact Us"),
            heightSizedBox(30.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("We are available 24x7 on chat\n"),
                Text("Click to start chat")
              ],
            )
          ],
        )
      ],
    );
  }
}

class ImportantLinks2 extends StatelessWidget {
  const ImportantLinks2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingTxt(text: "Important Links"),
        heightSizedBox(30.0),
        BottomTextBtn(text: "Taror", onTap: () {}),
        BottomTextBtn(text: "Collaboration", onTap: () {}),
        BottomTextBtn(text: "Vastu Shastra", onTap: () {}),
        BottomTextBtn(text: "Mole Astrology", onTap: () {}),
        BottomTextBtn(text: "Solar Eclipse 2023", onTap: () {}),
        BottomTextBtn(text: "Lunar Eclipse 2023", onTap: () {}),
        BottomTextBtn(text: "Festival Calendar 2023", onTap: () {}),
        BottomTextBtn(text: "Vrat Calendar 2023", onTap: () {}),
        BottomTextBtn(text: "Planetary Transit 2023", onTap: () {}),
        const AstrologerAuth(),
        const CorporateInfo()
      ],
    );
  }
}

class CorporateInfo extends StatelessWidget {
  const CorporateInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightSizedBox(30.0),
        const HeadingTxt(text: "Corporate Info"),
        heightSizedBox(30.0),
        for (var i = 0; i < btmCorpInfoItemLst1.length; i++)
          BottomTextBtn(text: btmCorpInfoItemLst1[i]["text"]),
      ],
    );
  }
}

class AstrologerAuth extends StatelessWidget {
  const AstrologerAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightSizedBox(30.0),
        const HeadingTxt(text: "Astrologer"),
        heightSizedBox(30.0),
        const BottomTextBtn(text: "Astrologer Login"),
        const BottomTextBtn(text: "Astrologer Registration")
      ],
    );
  }
}

class ImportantLinks extends StatelessWidget {
  const ImportantLinks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingTxt(text: "Important Links"),
        heightSizedBox(30.0),
        for (int i = 0; i < importantItemLst.length; i++)
          BottomTextBtn(
            text: importantItemLst[i]['text'],
          ),
      ],
    );
  }
}

class Horoscope extends StatelessWidget {
  const Horoscope({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingTxt(text: "Horoscope"),
        heightSizedBox(30.0),
        for (var i = 0; i < btmHoroScopeLst.length; i++)
          BottomTextBtn(
            text: btmHoroScopeLst[i]["text"],
            onTap: () {},
          ),
        heightSizedBox(15.0),
        const ShubhMuhurat()
      ],
    );
  }
}

class ShubhMuhurat extends StatelessWidget {
  const ShubhMuhurat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeadingTxt(text: "Shubh Muhurat 2023"),
        heightSizedBox(30.0),
        for (var i = 0; i < btmShubhMuhuratLst.length; i++)
          BottomTextBtn(
            text: btmShubhMuhuratLst[i]["text"],
          ),
      ],
    );
  }
}

class AboutAstroKapish extends StatelessWidget {
  const AboutAstroKapish({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadingTxt(
          text: "About AstroKapish",
        ),
        heightSizedBox(8.0),
        Text(
          aboutAstroKapis,
          style: const TextStyle(
              fontSize: 15.0,
              color: Colors.white,
              // fontWeight: FontWeight.w500,
              height: 2),
        ),
      ],
    );
  }
}

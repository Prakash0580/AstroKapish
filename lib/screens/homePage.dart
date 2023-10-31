import 'package:flutter/material.dart';
import 'home/banner.dart';
import 'home/bottom_menu.dart';
import 'home/four_btns.dart';
import 'home/our_Astro.dart';
import 'home/our_free_ser.dart';
import 'home/our_promicess.dart';
import 'home/predaction.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopBanner(),
            FourBtns(),
            OurFreeServices(),
            OurPromices(),
            OurAstrologers(),
            Predication(),
            BottomMenu()
          ],
        ),
      ),
    );
  }
}

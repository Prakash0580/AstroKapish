import 'package:flutter/material.dart';

import '../../utils/common_style.dart';

class OurFreeServices extends StatelessWidget {
  const OurFreeServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Container(
        width: width(context),
        height:350,
        color: Colors.white,
        child: Column(
          children: [
            const Text(
              "Complimentary Astrology Services",
              style:
                  TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            heightSizedBox(10.0),
            Container(
              color: Colors.amber,
              width: width(context) / 12,
              height: 3,
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CardBox(
                  text: 'FESTIVAL 2023',
                  src: "assets/icons/diwali1.png",
                ),widthSizedBox(30.0),
                const CardBox(
                  text: 'KUNDLI MATCHING',
                  src: "assets/icons/esoteric.png",
                ),widthSizedBox(30.0),
                const CardBox(
                  text: 'TODAY PANCHAG',
                  src: "assets/icons/diwali1.png",
                ),widthSizedBox(30.0),
                const CardBox(
                  text: 'TODAY HOROSCOPE',
                  src: "assets/icons/diwali1.png",
                ),widthSizedBox(30.0),const CardBox(
                  text: 'FREE KUNDLI',
                  src: "assets/icons/diwali1.png",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardBox extends StatelessWidget {
  final String text, src;
  const CardBox({super.key, required this.text, required this.src});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        
        onTap: (){},
        // focusColor: Colors.green,
        // highlightColor:Colors.purple ,
        hoverColor: Colors.grey.shade300,
        // splashColor: Colors.blue,
       
    
        child: SizedBox(
          // height: 190,
          width: 200,
          child: Card(
            elevation: 10,
            shadowColor: Colors.blue.shade300,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 30, bottom: 20, left: 10, right: 10),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.amber,
                    child: Image.asset(
                      src,
                      height: 60,
                      width: 60,
                      fit: BoxFit.contain,
                    ),
                  ),
                  heightSizedBox(20.0),
                  Text(
                    text,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

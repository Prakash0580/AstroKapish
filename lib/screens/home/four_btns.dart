import 'package:astrokapish/screens/call/call_screen.dart';
import 'package:astrokapish/screens/chat/chat_scr.dart';
import 'package:astrokapish/utils/urlname_navigation.dart';
import 'package:flutter/material.dart';

import '../../utils/common_style.dart';

class FourBtns extends StatelessWidget {
  const FourBtns({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        btnCard(
          src: "assets/icons/chat.png",
          text: "Chat With Astrologers",
          onTap: () {
            navigationPush(context, const ChatScreen());
          },
        ),
        widthSizedBox(30.0),
        btnCard(
          src: "assets/icons/call.png",
          text: "Talk To Astrologers",
          onTap: () {
            navigationPush(context, const CallScreen());
          },
        ),
        widthSizedBox(30.0),
        const btnCard(
          src: "assets/icons/live.png",
          text: "Live Astrologers",
        ),
        widthSizedBox(30.0),
        const btnCard(
          src: "assets/icons/blog.png",
          text: "Astrokapish Blogs",
        )
      ],
    );
  }
}

class btnCard extends StatelessWidget {
  final String src, text;
  final Function()? onTap;
  const btnCard({super.key, required this.src, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 100,
          width: 270,

          // decoration: BoxDecoration(
          //     color: Colors.white,
          //     border: Border.all(width: 0.1, color: Colors.black12),
          //     borderRadius: BorderRadius.circular(8)),
          child: Card(
            elevation: 10,
            shadowColor: Colors.blue.shade300,
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.all(8)),
                Image.asset(src, height: 35, width: 35, fit: BoxFit.contain),
                heightSizedBox(10.0),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

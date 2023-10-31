import 'package:flutter/material.dart';
import '../../utils/common_style.dart';

class OurPromices extends StatelessWidget {
  const OurPromices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      width: width(context),
      height: null,
      color: Colors.amberAccent,
      child: Column(
        children: [
          // heightSizedBox(30.0),
          const Text(
            "Our Promise",
            style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          heightSizedBox(20.0),
          const Text(
            "Top Astrologers. 24x7 customer support. Happy to help.",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          ),
          heightSizedBox(25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Box(
                icon: Icons.money,
                text: "Money Back Guarantee",
                color: Colors.purpleAccent,
              ),
              widthSizedBox(30.0),
              const Box(
                icon: Icons.verified,
                text: "Verified Expert Astrologers",
                color: Colors.blueAccent,
              ),
              widthSizedBox(30.0),
              const Box(
                icon: Icons.security_outlined,
                text: "100% Secure Payment",
                color: Colors.greenAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  final IconData? icon;
  final String text;
  final Color? color;
  const Box({super.key, this.icon, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: color,
            child: Icon(
              icon,
              // Icons.money,
              color: Colors.white,
            ),
          ),
          heightSizedBox(5.0),
          Text(
            text,
            // "Money Back Guarantee",
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

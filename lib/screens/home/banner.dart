import 'package:flutter/material.dart';
import '../../utils/common_style.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/homebanner.png",
      width: width(context),
      height: 420,
      fit: BoxFit.fill,
    );
  }
}

import 'package:flutter/material.dart';

import '../../constrants.dart';
import '../../utils/common_style.dart';

class HeaderBtnBar extends StatelessWidget {
  const HeaderBtnBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context),
      height: 50,
      color: kPrimaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              const Spacer(),
              cusBtn(
                btnName: 'Home',
                onTap: () {},
              ),
              widthSizedBox(kPadding),
              cusBtn(
                btnName: 'HoroScope',
                onTap: () {},
              ),
              widthSizedBox(kPadding),
              cusBtn(
                btnName: 'Free Kundli',
                onTap: () {},
              ),
              widthSizedBox(kPadding),
              cusBtn(
                btnName: 'Kundli Matching',
                onTap: () {},
              ),
              widthSizedBox(kPadding),
              cusBtn(
                btnName: 'AstroMall',
                onTap: () {},
              ),
              widthSizedBox(kPadding),
              cusBtn(
                btnName: 'Blog',
                onTap: () {},
              ),
              widthSizedBox(kPadding),
              cusBtn(
                btnName: 'Contact',
                onTap: () {},
              ),
              const Spacer()
            ],
          )
        ],
      ),
    );
  }
}

class cusBtn extends StatelessWidget {
  final Function()? onTap;
  final String btnName;
  const cusBtn({
    super.key,
    this.onTap,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        btnName,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}

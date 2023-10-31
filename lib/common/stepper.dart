import 'package:flutter/material.dart';
import '../utils/common_style.dart';

// // Sterper
class Stepers extends StatelessWidget {
  const Stepers({
    super.key,
    this.activeBtn,
  });

  final String? activeBtn;

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  btn('1', context,
                      check:
                          activeBtn == '2' || activeBtn == '3' ? true : false),
                  Text(
                    "Personal Details",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              horizontalDivider(200),
              Column(
                children: [
                  btn('2', context, check: activeBtn == '3' ? true : false),
                  Text(
                    "Personal Details",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
              horizontalDivider(width(context) / 10),
              btn('3', context),
            ],
          ),
        ],
      );
    });
  }

  // // //
  Widget btn(String title, BuildContext context,
      {Function? onTap, bool check = false}) {
    return Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
        margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 3.0),
        decoration: BoxDecoration(
            // color: appBarColor,
            color: check ? Colors.green : appBarColor,
            borderRadius: BorderRadius.circular(50.0)),
        child: check
            ? const Icon(
                Icons.check,
                size: 15,
                color: Colors.white,
              )
            : Text(
                title,
                style: const TextStyle(color: Colors.white),
              )
        // Btn(
        //     title,
        //     height: 30,
        //     width: 30,
        //     padding:
        //         const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
        //     margin:
        //         const EdgeInsets.symmetric(horizontal: 4.0, vertical: 3.0),
        //     color: title == activeBtn ? appBarColor : Colors.green,
        //   ),
        );
  }
}

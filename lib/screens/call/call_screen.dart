import 'package:astrokapish/screens/chat/static_text.dart';
import 'package:astrokapish/utils/common_style.dart';
import 'package:flutter/material.dart';

import '../home/bottom_menu.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double itemWidth = (screenWidth - 32.0) / 2;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Chat Screen"),
      // ),
      body: ListView(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  constraints: const BoxConstraints(minWidth: 1220),
                  width: 1200,
                  height: null,
                  child: Column(
                    children: [
                      const Top(),
                      heightSizedBox(20.0),
                      const Filters(),
                      heightSizedBox(30.0),
                      const ChatGridItems(),
                    ],
                  ),
                ),
              ),
            ),
          ),
          heightSizedBox(10.0),
          const HelpText(),
          const BottomMenu()
        ],
      ),
    );
  }
}

class Filters extends StatelessWidget {
  const Filters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Avalable Balance: 0.0",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        ChatBtn(
          btnName: "Recharge",
          onpressed: () {},
          btnWidth: 120,
          // borderColor: Colors.amberAccent,
        ),
        widthSizedBox(30.0),
        FilterBtn(
          btnName: "Filter",
          icon: Icons.filter_alt_outlined,
          // textColor: Colors.white,
          onPressed: () {},
        ),
        widthSizedBox(30.0),
        FilterBtn(
          btnName: "Sort",
          icon: Icons.sort,
          // textColor: Colors.white,
          onPressed: () {},
        ),
        widthSizedBox(30.0),
        // TxtField(
        //   hintText: "Search",
        // )
      ],
    );
  }
}

class FilterBtn extends StatelessWidget {
  final Function()? onPressed;
  final IconData? icon, iconColor;
  final Color? textColor, btnColor, borderColor, backgroundColor;

  final String btnName;

  const FilterBtn(
      {super.key,
      this.onPressed,
      required this.btnName,
      this.icon,
      this.iconColor,
      this.borderColor,
      this.textColor,
      this.btnColor,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(21)),
            side: BorderSide(color: borderColor ?? Colors.black, width: 1),
            fixedSize: const Size(100, 40),
            backgroundColor: backgroundColor ?? Colors.white),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            widthSizedBox(5.0),
            Text(
              btnName,
              style: const TextStyle(color: Colors.black),
            )
          ],
        ));
    // Text("Recharge"));
  }
}

class ChatGridItems extends StatelessWidget {
  const ChatGridItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 180),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          mainAxisExtent: 150,
          //  maxCrossAxisExtent: 500,
        ),
        itemCount: 15,
        itemBuilder: (context, index) {
          return const SizedBox(
            height: 150,
            width: 500,
            child: InkWell(
                child: Card(
                    elevation: 2,
                    // margin: EdgeInsets.only(
                    //   top: 5.0,
                    //   left: 8.0,
                    //   right: 8.0,
                    // ),
                    child: ProdCard())),
          );
        });
  }
}

class Top extends StatelessWidget {
  const Top({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // width: width(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        gradient: const LinearGradient(
          colors: [Colors.amberAccent, Colors.orangeAccent],
        ),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widthSizedBox(50.0),
          const Expanded(
              child: Center(
            child: Text(
              "Talk to India's Best Astrologers",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
            ),
          )),
          heightSizedBox(10.0),
        ],
      ),
    );
  }
}

class ProdCard extends StatelessWidget {
  const ProdCard({super.key, this.onTap, this.prod, this.senderId});
  final dynamic onTap;
  final dynamic prod;
  final String? senderId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const ProdPic(),
        const ProdMiddleItem(),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
            bottom: 10,
          ),
          child: Column(
            children: [
              const Padding(
                  padding: EdgeInsets.only(top: 10, left: 40),
                  child: Icon(
                    Icons.verified,
                    color: Colors.green,
                  )),
              heightSizedBox(35.0),
              ChatBtn(btnName: 'Call', onpressed: () {}
                  // navigationPush(
                  //     context,
                  //     ChatDetailPage(
                  //         senderId: senderId,
                  //         receiverId: prod['_id'],
                  //         name: prod['name'],
                  //         isOnline: prod['is_busy'])),
                  ),
              // const Text(
              //   "wait 5 mins",
              //   style: TextStyle(fontSize: 10, color: Colors.red),
              // )
            ],
          ),
        ),
      ],
    );
  }
}

class ProdPic extends StatelessWidget {
  // final dynamic prod;

  const ProdPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
        left: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            hoverColor: Colors.transparent,
            highlightColor: Colors.white,
            onTap: () {
              // navigationPush(context, SellerProfile());
            },
            child: const ComnCircleAvtar(
              radius1: 40,
              radius2: 39,
              child: ClipOval(
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.amber,
                ),
              ),
            ),
          ),

          // ComnCircleAvtar(
          //   radius1: 37,
          //   radius2: 36.5,
          //   child: prod['pic'].isNotEmpty
          //       ? Image.network(prod['picUrl'].toString())
          //       : const Icon(
          //           Icons.person,
          //           size: 40,
          //         ),
          // ),
          heightSizedBox(20.0),
          const Text(
            "Order",
            // " ${prod['orders']} orders",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class ProdMiddleItem extends StatelessWidget {
  // final dynamic prod;
  const ProdMiddleItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: SizedBox(
        width: width(context) / 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              hoverColor: Colors.transparent,
              highlightColor: Colors.white,
              onTap: () {
                // navigationPush(context, SellerProfile());
              },
              child: const Text(
                "AstroKapish",
                // prod['name'],
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            heightSizedBox(7.0),
            const Text(
              "Vedic, KP, Tarot, vedic",
              // "${prod['allSkills'].join(', ')}",
              // softWrap: true,
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            heightSizedBox(7.0),
            const Text(
              "Hindi,rajasthani",
              // "${prod['langauge'].join(', ')}",
              style: TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            heightSizedBox(7.0),
            const Text(
              "Exp. 5 Years",
              // "Exp: ${prod['experience']} Years",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15),
            ),
            heightSizedBox(7.0),
            const Text(
              "₹ 0",
              // "₹ ${prod['priceperMin']}/min",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ComnCircleAvtar extends StatelessWidget {
  final double? radius1, radius2;
  final Color? bckcolor1, bckcolor2;
  final double? size;
  final Widget? child;

  const ComnCircleAvtar(
      {super.key,
      this.radius1,
      this.radius2,
      this.bckcolor1,
      this.bckcolor2,
      this.size,
      this.child});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius1 ?? 38.0,
      backgroundColor: bckcolor1 ?? Colors.amber,
      child: CircleAvatar(
        radius: radius2 ?? 37.5,
        // foregroundColor: Colors.black,
        backgroundColor: bckcolor2 ?? Colors.yellow.shade100,
        child: child ??
            Icon(
              Icons.person,
              size: size ?? 40,
            ),
      ),
    );
  }
}

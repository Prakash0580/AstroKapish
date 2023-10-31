import 'package:astrokapish/screens/about/about_us.dart';
import 'package:astrokapish/screens/auth/login.dart';
import 'package:astrokapish/screens/auth/sign_up.dart';
import 'package:astrokapish/screens/call/call_screen.dart';
import 'package:astrokapish/screens/homePage.dart';
import 'package:flutter/material.dart';
import '../../utils/common_style.dart';
import '../../utils/urlname_navigation.dart';
import '../chat/chat_scr.dart';
import 'bottom_menu.dart';
import 'header_btnBar.dart';

class LandingPage extends StatefulWidget {
  LandingPage({
    super.key,
  });
  // int? currentTab;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [
    const HomePage(),
    const ChatScreen(),
    CallScreen(),
    LoginScreen(),
    const LoginScreen(),
    SignUpScreen(),
    const AboutUs(),
    const ChatScreen(),
    // const ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80.0,
        title: Row(
          children: [
            widthSizedBox(100.0),
            const Text(
              "AstroKapish",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            // Image.asset(
            //   "images/logo.jpg",
            //   fit: BoxFit.fitWidth,
            //   height: 500,
            //   width: width(context) / 3,
            // ),
            const Spacer(),
            ChatBtn(
                btnWidth: 200,
                btnName: "Chat With Astrologer",
                onpressed: () {
                  _onItemTapped(1);
                }),
            widthSizedBox(20.0),
            ChatBtn(
                btnWidth: 200,
                btnName: "Call With Astrologer",
                onpressed: () {
                  _onItemTapped(2);
                }),
            widthSizedBox(20.0),
            ChatBtn(
                backgroundColor: Colors.amberAccent,
                textColor: Colors.black,
                borderColor: Colors.black54,
                btnName: "Login",
                onpressed: () {
                  _onItemTapped(3);
                }),
            widthSizedBox(100.0)
          ],
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Container(
              width: width(context),
              height: 50,
              color: Colors.amber,
              child: Center(
                child: Row(
                  children: [
                    const Spacer(),
                    cusBtn(
                      btnName: 'Home',
                      onTap: () {
                        _onItemTapped(0);
                      },
                    ),
                    widthSizedBox(40.0),
                    cusBtn(
                      btnName: 'HoroScope',
                      onTap: () {
                        // navigationPush(context, ChatScreen());
                      },
                    ),
                    widthSizedBox(40.0),
                    cusBtn(
                      btnName: 'Free Kundli',
                      onTap: () {},
                    ),
                    widthSizedBox(40.0),
                    DropdownButton(
                        underline: const SizedBox(),
                        items: [
                          DropdownMenuItem(
                            child: InkWell(
                              onTap: () {
                                // print("Yug Kumawat");
                              },
                              onHover: (value) {
                                print("Yug Kumawat");
                              },
                              child: Text(
                                "Services",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                        ],
                        onChanged: (value) {}),
                    widthSizedBox(40.0),
                    cusBtn(
                      btnName: 'Kundli Matching',
                      onTap: () {},
                    ),
                    widthSizedBox(40.0),
                    cusBtn(
                      btnName: 'AstroMall',
                      onTap: () {},
                    ),
                    widthSizedBox(40.0),
                    cusBtn(
                      btnName: 'Blog',
                      onTap: () {},
                    ),
                    widthSizedBox(40.0),
                    cusBtn(
                      btnName: 'Contact',
                      onTap: () {},
                    ),
                    const Spacer()
                  ],
                ),
              ),
            )),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

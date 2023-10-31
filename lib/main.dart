import 'package:astrokapish/screens/auth/otp.dart';
import 'package:astrokapish/screens/auth/sign_up.dart';
import 'package:astrokapish/screens/home/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AstroKapish",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   fontFamily: 'Montserrat'
      // ),
      home: LandingPage(),
      // home: SignUpScreen(),
    );
  }
}

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Gradient Avatar'),
// //         ),
// //         body: Center(
// //           child: GradientAvatar(
// //               height: 500,
// //               width: 370, // Set the size of the avatar
// //               gradientColors: [
// //                 Color(0xFF09ff9a),
// //                 Color(0xFF506df9)
// //               ], // Define gradient colors
// //               child: ClipOval(
// //                 child: CircleAvatar(
// //                   backgroundColor: Colors.transparent,
// //                   backgroundImage: AssetImage("assets/logo/me.jpg"),
// //                   radius: 175,
// //                 ),
// //               )),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class GradientAvatar extends StatelessWidget {
// //   final double width, height;
// //   final List<Color> gradientColors;
// //   final Widget child;

// //   GradientAvatar({
// //     required this.width,
// //     required this.height,
// //     required this.gradientColors,
// //     required this.child,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: width,
// //       height: height,
// //       decoration: BoxDecoration(
// //         shape: BoxShape.circle,
// //         gradient: LinearGradient(
// //           colors: gradientColors,
// //           begin: Alignment.topLeft,
// //           end: Alignment.bottomRight,
// //         ),
// //       ),
// //       child: Center(
// //         child: child,
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

//   GlobalKey btnKey = GlobalKey();

//   bool isMenuOpen = false;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Dropdown Menu on Hover Example'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               MouseRegion(
//                 onEnter: (_) {
//                   showMenu(context);
//                 },
//                 onExit: (_) {
//                   if (isMenuOpen) {
//                     Navigator.of(context).pop();
//                     isMenuOpen = false;
//                   }
//                 },
//                 child: DropdownButton<String>(
//                   key: btnKey,
//                   value: items.first,
//                   onChanged: ( newValue) {
//                     // Handle the item selection here
//                     print('Selected: $newValue');
//                   },
//                   items: items.map<DropdownMenuItem<String>>((String item) {
//                     return DropdownMenuItem<String>(
//                       value: item,
//                       child: Text(item),
//                     );
//                   }).toList(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void showMenu(BuildContext context) {
//     final RenderBox button = btnKey.currentContext!.findRenderObject() as RenderBox;
//     final RenderBox overlay = Overlay.of(context)!.context.findRenderObject() as RenderBox;
//     final RelativeRect position = RelativeRect.fromRect(
//       Rect.fromPoints(
//         button.localToGlobal(Offset.zero, ancestor: overlay),
//         button.localToGlobal(button.size.bottomLeft(Offset.zero), ancestor: overlay),
//       ),
//       Offset.zero & overlay.size,
//     );

//     isMenuOpen = true;

//     showMenu(
//       context: context,
//       position: position,
//       items: items.map<PopupMenuEntry<String>>((String item) {
//         return PopupMenuItem<String>(
//           value: item,
//           child: Text(item),
//         );
//       }).toList(),
//     ).then((value) {
//       isMenuOpen = false;
//     });
//   }
// }

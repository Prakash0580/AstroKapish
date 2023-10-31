import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Future<dynamic> navigateTo(Widget widget) {
  // return navigatorKey.currentState!.pushNamed(routeName);

  return navigatorKey.currentState!
      .push(MaterialPageRoute(builder: (context) => widget));
}

navigationPop(BuildContext context) {
  Navigator.of(context).pop();
}

// Named Routing

removeUntilRoute(BuildContext context, String pageName, {Object? arguments}) {
  Navigator.pushNamedAndRemoveUntil(
      context, pageName, arguments: arguments, (route) => false);
}

pushReplaceRoute(BuildContext context, String pageName, {Object? arguments}) {
  Navigator.pushReplacementNamed(context, pageName, arguments: arguments);
}

pushRoute(BuildContext context, String pageName, {Object? arguments}) {
  Navigator.pushNamed(context, pageName, arguments: arguments);
}

//  Naviation
navigationRemoveUntil(BuildContext context, Widget widget) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => widget),
      (Route<dynamic> route) => false);
}

navigationPushReplacement(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => widget));
}

Future navigationPush(BuildContext context, Widget widget) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => widget));
}

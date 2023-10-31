// import 'dart:convert';
// import 'package:hive/hive.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// tokenDecode(String code) {
//   String normalizedSource = base64Url.normalize(code.split(".")[1]);
//   Map valueMap = json.decode(utf8.decode(base64Url.decode(normalizedSource)));
//   return valueMap;
// }

// // !  Create Token DataBaSe
// class TokensDbs {
//   final tokenBox = Hive.box('authtoken_Box');

//   //  Create Database for Tokens
//   storeToken() {
//     final data = tokenBox.keys.map((key) {
//       final value = tokenBox.get(key);
//       return {"key": key, "token": value['token']};
//     }).toList();

//     return data.reversed.toList();
//   }

//   //  Create a single item
//   Future<void> createItem(Map<String, dynamic> newItem) async {
//     await tokenBox.add(newItem);
//   }

//   //  Read a single item
//   Future readItem(int? key) async {
//     List<dynamic> data = storeToken();
//     if (data.isNotEmpty) {
//       final item = await tokenBox.get(key);
//       return item;
//     }
//     return false;
//   }

// //  Delete a single item
//   Future deleteItem(int itemKey) async {
//     await tokenBox.delete(itemKey);
//   }

//   Future<void> clearItem() async {
//     await tokenBox.clear();
//   }
// }

// // ! ============================================================================================================
// // ! Token mETHOD
// class Tokens {
//   static setCurrentUser(token) async {
//     await TokensDbs().clearItem();
//     if (token != null) {
//       TokensDbs().createItem({"token": token});
//     }
//     getCurrentUser();
//   }

//   static getCurrentUser() async {
//     dynamic tokn = await TokensDbs().readItem(0);
//     return tokn != false ? tokn['token'] : false;
//   }

//   static userTokenData() async {
//     dynamic tokn = await TokensDbs().readItem(0);
//     return tokn != false ? tokenDecode(tokn['token']) : false;
//   }
// }

// // // ! LOGOUT METHOD
// Future<void> logout() async {
//   await TokensDbs().deleteItem(0);
//   await TokensDbs().clearItem();
// }

// // // import 'package:web_socket_channel/io.dart';
// // import 'package:web_socket_channel/web_socket_channel.dart';

// // class WebSocketManager {
// //   final WebSocketChannel channel;

// //   // WebSocketManager(String url) : channel = IOWebSocketChannel.connect(url);
// //   WebSocketManager(String url)
// //       : channel = WebSocketChannel.connect(Uri.parse(url));

// //   Stream<dynamic> get stream => channel.stream;

// //   void sendMessage(senderId, receiverId, msg) {
// //     print("this is chat messae $senderId, $receiverId, $msg");
// //     // channel.sink.add(message);
// //     channel.sink.add(
// //         '''{"action": "sendmessage",  "data":{
// //       "senderId": "$senderId" , 
// //       "receiverId":"$receiverId", 
// //       "msg":"$msg" }}''');
// //   }

// //   void closeConnection() {
// //     channel.sink.close();
// //   }
// // }


// import 'package:web_socket_channel/web_socket_channel.dart';

// class WebSocketManager {
//   final WebSocketChannel channel;

//   WebSocketManager(String url)
//       : channel = WebSocketChannel.connect(Uri.parse(url));

//   Stream<dynamic> get stream => channel.stream;

//   void chatDataLoad(senderId, receiverId) {
//     print("this is chat messae $senderId, $receiverId");
//     // channel.sink.add(message);
//     channel.sink.add('''{"action": "chatdata",  "data":{
//       "senderId": "$senderId" ,"receiverId":"$receiverId"
//      }}''');
//   }

//   void sendMessage(senderId, receiverId, msg) {
//     print("this is chat messae $senderId, $receiverId, $msg");
//     // channel.sink.add(message);
//     channel.sink.add('''{"action": "sendmessage",  "data":{
//       "senderId": "$senderId" , 
//       "receiverId":"$receiverId", 
//       "msg":"$msg" }}''');
//   }

//   void closeConnection() {
//     channel.sink.close();
//   }
// }
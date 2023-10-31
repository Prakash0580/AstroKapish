// // import 'package:flutter/material.dart';
// // import 'package:intl/intl.dart';

// // class MyTimePicker extends StatefulWidget {
// //   @override
// //   _MyTimePickerState createState() => _MyTimePickerState();
// // }

// // class _MyTimePickerState extends State<MyTimePicker> {
// //   TimeOfDay? selectedTime;
// //   TextEditingController timeController = TextEditingController();

// //   Future<void> _selectTime(BuildContext context) async {
// //     final TimeOfDay? picked = await showTimePicker(
// //       context: context,
// //       initialTime: TimeOfDay.now(),
// //     );

// //     if (picked != null && picked != selectedTime) {
// //       setState(() {
// //         selectedTime = picked;

// //         final formattedTime = DateFormat.Hms().format(DateTime(
// //           DateTime.now().year,
// //           DateTime.now().month,
// //           DateTime.now().day,
// //           picked.hour,
// //           picked.minute,
// //           // picked.second,
// //         ));
// //         timeController.text = formattedTime;
// //       });
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     timeController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Time Picker'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             TextField(
// //               controller: timeController,
// //               readOnly: true,
// //               onTap: () => _selectTime(context),
// //               decoration: InputDecoration(
// //                 labelText: 'Selected Time',
// //                 suffixIcon: Icon(Icons.access_time),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'dart:async';
// import 'package:flutter/material.dart';

// class MyHomeClass extends StatefulWidget {
//   const MyHomeClass({super.key});

//   @override
//   State<MyHomeClass> createState() => _MyHomeClassState();
// }

// class _MyHomeClassState extends State<MyHomeClass> {
//   late StreamSubscription _streamSubscription;
//   late StreamController _streamController;

//   @override
//   void initState() {
//     super.initState();
//     _streamController = StreamController();
//     _streamSubscription = ApiMethod.getDioHeaderRequest(URLName.profileUrl)
//         .asStream()
//         .listen((data) {
//       _streamController.add(data);
//     });
//   }

//   @override
//   void dispose() {
//     _streamSubscription.cancel();
//     _streamController.close();
//     super.dispose();
//   }

//   // Future<String> fetchData() async {
//   //   final response = await http.get('https://your-api-endpoint.com/data');
//   //   if (response.statusCode == 200) {
//   //     return response.body;
//   //   } else {
//   //     throw Exception('Failed to fetch data');
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('API Stream Call'),
//       ),
//       body: StreamBuilder(
//         stream: _streamController.stream,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             print(snapshot.data);
//             return Text(snapshot.data.toString());
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else {
//             return const CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }
// }

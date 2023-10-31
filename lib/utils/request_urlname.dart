// import 'package:dio/dio.dart';

// import 'tokens.dart';

// Map<String, dynamic> header = {'Content-Type': 'application/json'};
// Tokens tokns = Tokens();

// class ApiMethod {
// // // // Get Request
// //   static Future getDioRequest(String url) async {
// //     try {
// //       Response response =
// //           await Dio().get(url, options: Options(headers: header));
// //       print(response);
// //       if (response.statusCode == 200) {
// //         return response.data;
// //       }
// //     } on DioException catch (e) {
// //       print(e.response?.data);
// //       return e.response?.data;
// //     }
// //   }

//   static getDioHeaderRequest(String url) async {
//     try {
//       dynamic tokn = await Tokens.getCurrentUser();
//       // header['Authorization'] = "Bearer ${toks['token']}";
//       header['Authorization'] = "Bearer $tokn";

//       Response response =
//           await Dio().get(url, options: Options(headers: header));

//       return response.data;
//     } on DioException catch (e) {
//       // print(e.response?.data);
//       // return e.response?.data;
//       return e;
//     }
//   }

// // // Post Reauest
//   static postDioRequest(String url, {dynamic data}) async {
//     Response response;
//     try {
//       response = await Dio().post(url, data: data);
//       print(response.statusCode);
//       print(response.data);
//       return response.data;
//     } on DioException catch (e) {
//       print(e);
//       return e.response?.data;
//     }
//   }

//   static postDioHeaderRequest(String url, {dynamic data}) async {
//     dynamic tokn = await Tokens.getCurrentUser();
//     header['Authorization'] = "Bearer $tokn";
//     Response response;

//     try {
//       response =
//           await Dio().post(url, data: data, options: Options(headers: header));

//       return response.data;
//     } on DioException catch (e) {
//       print(e);
//       return e.response?.data;
//     }
//   }

// // // PUT request
//   static Future putDioRequest(String url, dynamic body) async {
//     Response response;
//     // Map<String, dynamic> headers = {};

//     try {
//       response =
//           await Dio().put(url, data: body, options: Options(headers: header));
//     } on DioException catch (e) {
//       return e.response?.data;
//     }

//     return response.data;
//   }

// // // Delete Request
//   static Future delDioRequest(String url, dynamic body) async {
//     Response response;

//     try {
//       response = await Dio().put(url, data: body);
//     } on DioException catch (e) {
//       return e.response?.data;
//     }

//     return response;
//   }
// }

// class StreamApiMethod {
//   static getDioHeaderRequest(String url) async* {
//     try {
//       dynamic toks = await Tokens.getCurrentUser();
//       header['Authorization'] = "Bearer $toks";

//       Response response =
//           await Dio().get(url, options: Options(headers: header));

//       // print(response.data);

//       yield response.data;
//     } on DioException catch (e) {
//       print(e);
//       print(e.response?.data);
//       yield e.response?.data;
//       // return e;
//     }
//   }

//   static postDioHeaderRequest(String url, {dynamic data}) async* {
//     dynamic toks = await Tokens.getCurrentUser();
//     header['Authorization'] = "Bearer $toks";

//     try {
//       Response response =
//           await Dio().post(url, data: data, options: Options(headers: header));
//       // print("Respone ${response.statusCode}");
//       // print("Respone ${response.data}");

//       yield response.data;
//     } on DioException catch (e) {
//       print(e);
//       print(e.response?.data);

//       yield e.response?.data;
//     }
//   }

//   static putDioHeaderRequest(String url, {dynamic data}) async* {
//     dynamic toks = await Tokens.getCurrentUser();
//     header['Authorization'] = "Bearer $toks";

//     try {
//       Response response =
//           await Dio().put(url, data: data, options: Options(headers: header));
//       // print("Respone ${response.statusCode}");
//       // print("Respone ${response.data}");

//       yield response.data;
//     } on DioException catch (e) {
//       print(e);
//       print(e.response?.data);

//       yield e.response?.data;
//     }
//   }
// }

// // ! URLNAME
// class URLName {
//   static const localBaseUrl = "http://10.0.2.2:5000/";

//   static const baseUserUrl =
//       "https://thp88hi2u7.execute-api.ap-south-1.amazonaws.com/Prod/";

//   static const chatSocketUrl =
//       "wss://gvitg3ymq8.execute-api.ap-south-1.amazonaws.com/Prod?usrType=customer&id=";

//   static const baseCommonUrl =
//       "https://nt8kefb1dc.execute-api.ap-south-1.amazonaws.com/Prod/";

//   ///API onBoarding************************************************************************
//   static const sendOtpUrl = "${baseUserUrl}customer/sendOtp";
//   static const signInUrl = "${baseUserUrl}customer/signIn";
//   static const signUpUrl = "${baseUserUrl}customer/signUp";
//   static const profileUrl = "${baseUserUrl}customer/profile";

//   static const profilePicUploadUrl = "${baseUserUrl}customer/upload/profile";

//   static const selChatProfileUrl = '${baseUserUrl}astrologer/profile/chat';
//   static const selAudioProfileUrl = '${baseUserUrl}astrologer/profile/audio';
//   static const selVideoProfileUrl = '${baseUserUrl}astrologer/profile/video';
//   // static const chatConnectedUrl = "${chatBaseUrls}astrocustomerconnected";
//   // static const chatUrl = "${chatBaseUrl}chats";
//   // static const chatDataUrl = "${chatBaseUrl}chats/data";
//   static const getFollowerUrl = "${baseCommonUrl}customer/follower";
//   static const followUrl = "${baseCommonUrl}customer/follower";

//   static const reviewReplyUrl = "${baseCommonUrl}customer/review/reply";
//   static const reviewAllShowUrl = "${baseCommonUrl}customer/review";
//   static const reviewShowUrl = "${baseCommonUrl}customer/review/show";

//   // static const chatOnoffUrl = "${baseCommonUrl}astrologer/onoff/chat";
//   // static const audioOnoffUrl = "${baseCommonUrl}astrologer/onoff/audio";
//   // static const videoOnoffUrl = "${baseCommonUrl}astrologer/onoff/video";
// }





























// // //////////////////////////////////////////////////////////////////////////////


// // import 'package:dio/dio.dart';

// // import 'tokens.dart';

// // Map<String, dynamic> header = {'Content-Type': 'application/json'};
// // Tokens tokns = Tokens();

// // class ApiMethod {
// // // // // Get Request
// // //   static Future getDioRequest(String url) async {
// // //     try {
// // //       Response response =
// // //           await Dio().get(url, options: Options(headers: header));
// // //       print(response);
// // //       if (response.statusCode == 200) {
// // //         return response.data;
// // //       }
// // //     } on DioException catch (e) {
// // //       print(e.response?.data);
// // //       return e.response?.data;
// // //     }
// // //   }

// //   static getDioHeaderRequest(String url) async {
// //     try {
// //       dynamic tokn = await Tokens.getCurrentUser();
// //       // header['Authorization'] = "Bearer ${toks['token']}";
// //       header['Authorization'] = "Bearer $tokn";

// //       Response response =
// //           await Dio().get(url, options: Options(headers: header));

// //       return response.data;
// //     } on DioException catch (e) {
// //       // print(e.response?.data);
// //       // return e.response?.data;
// //       return e;
// //     }
// //   }

// // // // Post Reauest
// //   static postDioRequest(String url, {dynamic data}) async {
// //     Response response;
// //     try {
// //       response = await Dio().post(url, data: data);
// //       return response.data;
// //     } on DioException catch (e) {
// //       print(e);
// //       return e.response?.data;
// //     }
// //   }

// //   static postDioHeaderRequest(String url, {dynamic data}) async {
// //     dynamic tokn = await Tokens.getCurrentUser();
// //     header['Authorization'] = "Bearer $tokn";
// //     Response response;

// //     try {
// //       response =
// //           await Dio().post(url, data: data, options: Options(headers: header));

// //       return response.data;
// //     } on DioException catch (e) {
// //       print(e);
// //       return e.response?.data;
// //     }
// //   }

// // // // PUT request
// //   static Future putDioRequest(String url, dynamic body) async {
// //     Response response;
// //     // Map<String, dynamic> headers = {};

// //     try {
// //       response =
// //           await Dio().put(url, data: body, options: Options(headers: header));
// //     } on DioException catch (e) {
// //       return e.response?.data;
// //     }

// //     return response.data;
// //   }

// // // // Delete Request
// //   static Future delDioRequest(String url, dynamic body) async {
// //     Response response;

// //     try {
// //       response = await Dio().put(url, data: body);
// //     } on DioException catch (e) {
// //       return e.response?.data;
// //     }

// //     return response;
// //   }
// // }

// // class StreamApiMethod {
// //   static getDioHeaderRequest(String url) async* {
// //     try {
// //       dynamic toks = await Tokens.getCurrentUser();
// //       header['Authorization'] = "Bearer $toks";

// //       Response response =
// //           await Dio().get(url, options: Options(headers: header));

// //       // print(response.data);

// //       yield response.data;
// //     } on DioException catch (e) {
// //       print(e);
// //       print(e.response?.data);
// //       yield e.response?.data;
// //       // return e;
// //     }
// //   }

// //   static postDioHeaderRequest(String url, {dynamic data}) async* {
// //     dynamic toks = await Tokens.getCurrentUser();
// //     header['Authorization'] = "Bearer $toks";

// //     try {
// //       Response response =
// //           await Dio().post(url, data: data, options: Options(headers: header));
// //       // print("Respone ${response.statusCode}");
// //       // print("Respone ${response.data}");

// //       yield response.data;
// //     } on DioException catch (e) {
// //       print(e);
// //       print(e.response?.data);

// //       yield e.response?.data;
// //     }
// //   }

// //   static putDioHeaderRequest(String url, {dynamic data}) async* {
// //     dynamic toks = await Tokens.getCurrentUser();
// //     header['Authorization'] = "Bearer $toks";

// //     try {
// //       Response response =
// //           await Dio().put(url, data: data, options: Options(headers: header));
// //       // print("Respone ${response.statusCode}");
// //       // print("Respone ${response.data}");

// //       yield response.data;
// //     } on DioException catch (e) {
// //       print(e);
// //       print(e.response?.data);

// //       yield e.response?.data;
// //     }
// //   }
// // }

// // // ! URLNAME
// // class URLName {
// //   static const localBaseUrl = "http://10.0.2.2:5000/";
// //   // static const baseUrl = "http://127.0.0.1:8000/";
// //   static const baseCustomerUrl =
// //       "https://9lh9x4huce.execute-api.ap-south-1.amazonaws.com/Prod/";

// //   static const baseChatUrl =
// //       "https://xfv4hvqcra.execute-api.ap-south-1.amazonaws.com/Prod/";

// //   static const chatSocketUrl =
// //       "wss://gvitg3ymq8.execute-api.ap-south-1.amazonaws.com/Prod?usrType=customer&id=";

// //   ///API onBoarding************************************************************************
// //   static const sendOtpUrl = "${baseCustomerUrl}sendOtp";
// //   static const signInUrl = "${baseCustomerUrl}signIn";
// //   static const signUpUrl = "${baseCustomerUrl}signUp";
// //   static const profileUrl = "${baseCustomerUrl}profile";

// //   // static const chatUrl = "${chatBaseUrl}chats";
// //   // static const chatDataUrl = "${chatBaseUrl}chats/data";
// //   static const selProfileUrl = '${baseChatUrl}chats/seller';
// //   // static const chatConnectedUrl = "${chatBaseUrls}astrocustomerconnected";
// // }







// // // headers 

// // headers: {
// //           'Content-Type': 'application/json',
// //           'Access-Control-Allow-Origin': '*',
// //           'Access-Control-Allow-Credentials': 'true',
// //           'Access-Control-Allow-Headers': 'Content-Type',
// //           'Access-Control-Allow-Methods':
// //           'GET,PUT,POST,DELETE'
// //         }
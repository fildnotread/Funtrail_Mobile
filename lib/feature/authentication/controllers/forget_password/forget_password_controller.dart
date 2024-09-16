// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert'; // For handling JSON

// import 'package:Funtrails/utils/constants/image_strings.dart';
// import 'package:Funtrails/utils/popup/full_screen_loader.dart';
// import '../../../../utils/helpers/network_manager.dart';
// import '../../../../utils/popup/loader.dart';

// class ForgetPasswordController extends GetxController {
//   static ForgetPasswordController get instance => Get.find();

//   final email = TextEditingController();
//   GlobalKey<FormState> forgetpasswordkey = GlobalKey<FormState>();

//   final String apiUrl = "https://your-laravel-api.com/api/password/reset"; // Update with your API URL

//   // Method to send password reset email
//   Future<void> sendPasswordEmail() async {
//     try {
//       Tfullscreenpopuploader.openLoadingDIalog(
//           'Processing your request...', TImages.deliveredEmailIllustration);

//       final isConnected = await NetworkManager.instance.isConnected();
//       if (!isConnected) {
//         Tfullscreenpopuploader.stopLoadingDialog();
//         return;
//       }

//       if (forgetpasswordkey.currentState != null &&
//           !forgetpasswordkey.currentState!.validate()) {
//         Tfullscreenpopuploader.stopLoadingDialog();
//         return;
//       }

//       // Make HTTP POST request to Laravel API
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//         body: jsonEncode({
//           'email': email.text.trim(),
//         }),
//       );

//       Tfullscreenpopuploader.stopLoadingDialog();

//       if (response.statusCode == 200) {
//         Tloader.successSnackBar(
//             title: 'Email Sent',
//             message: 'Email Link Sent to Reset your Password'.tr);
//         Get.to(() => ResetPasswordScreen(email: email.text.trim()));
//       } else {
//         final errorMessage = json.decode(response.body)['message'];
//         Tloader.errorSnackbar(title: 'Oh Snap!', message: errorMessage);
//       }
//     } catch (e) {
//       Tfullscreenpopuploader.stopLoadingDialog();
//       Tloader.errorSnackbar(title: 'Oh Snap!', message: e.toString());
//     }
//   }

//   // Method to resend password reset email
//   Future<void> resendPasswordResetEmail(String email) async {
//     try {
//       Tfullscreenpopuploader.openLoadingDIalog(
//           'Processing your request...', TImages.docernaimationillusstrator);

//       final isConnected = await NetworkManager.instance.isConnected();
//       if (!isConnected) {
//         Tfullscreenpopuploader.stopLoadingDialog();
//         Tloader.errorSnackbar(
//           title: 'No Internet Connection',
//           message: 'Please check your internet connection and try again.',
//         );
//         return;
//       }

//       // Make HTTP POST request to Laravel API
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         headers: {
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//         },
//         body: jsonEncode({
//           'email': email,
//         }),
//       );

//       Tfullscreenpopuploader.stopLoadingDialog();

//       if (response.statusCode == 200) {
//         Tloader.successSnackBar(
//             title: 'Email Sent',
//             message: 'Email Link Sent to Reset your Password'.tr);
//       } else {
//         final errorMessage = json.decode(response.body)['message'];
//         Tloader.errorSnackbar(title: 'Oh Snap!', message: errorMessage);
//       }
//     } catch (e) {
//       Tfullscreenpopuploader.stopLoadingDialog();
//       Tloader.errorSnackbar(title: 'Oh Snap!', message: e.toString());
//     }
//   }
// }

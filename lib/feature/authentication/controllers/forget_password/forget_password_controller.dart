// import 'package:Funtrails/utils/constants/image_strings.dart';
// import 'package:Funtrails/utils/popup/full_screen_loader.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../../../utils/helpers/network_manager.dart';
// import '../../../../utils/popup/loader.dart';

// class ForgetPAsswordController extends GetxController {
//   static ForgetPAsswordController get instance => Get.find();

//   final email = TextEditingController();
//   GlobalKey<FormState> forgetpasswordkey = GlobalKey<FormState>();

//   sednpasswordemail() async {
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

//       await AuthenticationRepository.instance
//           .SendpaswwordReset(email.text.trim());

//       Tfullscreenpopuploader.stopLoadingDialog();

//       Tloader.successSnackBar(
//           title: 'Email Sent',
//           message: 'Email Link Sent to Reset your Password'.tr);
//       Get.to(() => restsetpasswordscreen(email: email.text.trim()));
//     } catch (e) {
//       Tfullscreenpopuploader.stopLoadingDialog();
//       Tloader.errorSnackbar(title: 'Oh Snap!', message: e.toString());
//     }
//   }

//   resendpasswordRresetemail(String email) async {
//     try {
//       Tfullscreenpopuploader.openLoadingDIalog(
//           'Processing your request...', Timage.docernaimationillusstrator);

//       final isConnected = await NetworkManager.instance.isConnected();
//       if (!isConnected) {
//         Tfullscreenpopuploader.stopLoadingDialog();
//         Tloader.errorSnackbar(
//           title: 'No Internet Connection',
//           message: 'Please check your internet connection and try again.',
//         );
//         return;
//       }

//       await AuthenticationRepository.instance
//           .SendpaswwordReset(email);

//       Tfullscreenpopuploader.stopLoadingDialog();

//       Tloader.successSnackBar(
//           title: 'Email Sent',
//           message: 'Email Link Sent to Reset your Password'.tr);
//     } catch (e) {
//       Tfullscreenpopuploader.stopLoadingDialog();
//       Tloader.errorSnackbar(title: 'Oh Snap!', message: e.toString());
//     }
//   }
// }

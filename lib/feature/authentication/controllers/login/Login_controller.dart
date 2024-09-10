// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';


// import '../../../../utils/helpers/network_manager.dart';
// import '../../../../utils/popup/full_screen_loader.dart';
// import '../../../../utils/popup/loader.dart';

// class LoginController extends GetxController {
//   final rememberMe = false.obs;
//   final hidePassword = false.obs;
//   final localStorage = GetStorage();
//   final email = TextEditingController();
//   final password = TextEditingController();
//   GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
//   final usercontroller = Get.put(Usercontroller());

//   @override
//   void onInit() {
//     try {
//       email.text = localStorage.read('Remember_Email') ?? '';
//       password.text = localStorage.read('Remember_Password') ?? '';
//     } catch (e) {
//       print('Error reading from localStorage: $e');
//     }
//     super.onInit();
//   }

//   Future<void> emailAndPasswordSignIn() async {
//     try {
//       Tfullscreenpopuploader.openLoadingDIalog(
//           'You are logging in. Please wait!',
//           Timage.docernaimationillusstrator);

//       final isConnected = await NetworkManager.instance.isConnected();
//       if (!isConnected) {
//         Tfullscreenpopuploader.stopLoadingDialog();
//         return;
//       }

//       if (loginFormKey.currentState != null &&
//           !loginFormKey.currentState!.validate()) {
//         Tfullscreenpopuploader.stopLoadingDialog();
//         return;
//       }

//       if (rememberMe.value) {
//         localStorage.write('Remember_Email', email.text.trim());
//         localStorage.write('Remember_Password', password.text.trim());
//       }

//       final credintualUser = await AuthenticationRepository.instance
//           .loginWithemailandpassword(email.text.trim(), password.text.trim());

//       Tfullscreenpopuploader.stopLoadingDialog();

//       AuthenticationRepository.instance.screenRedirect();
//     } catch (e) {
//       Tfullscreenpopuploader.stopLoadingDialog();
//       Tloader.errorSnackbar(title: 'Oh Snap!', message: e.toString());
//     }
//   }

//   Future<void> googleSignIn() async {
//     try {
//       Tfullscreenpopuploader.openLoadingDIalog(
//           'You are logging in. Please wait!',
//           Timage.docernaimationillusstrator);

//       final isConnected = await NetworkManager.instance.isConnected();
//       if (!isConnected) {
//         Tfullscreenpopuploader.stopLoadingDialog();
//         Tloader.errorSnackbar(
//           title: 'No Internet Connection',
//           message: 'Please check your internet connection and try again.',
//         );
//         return;
//       }
//       final userCredential =
//           await AuthenticationRepository.instance.Signinwithgoogle();

//       await usercontroller.saveUserRecord(userCredential);

//       Tfullscreenpopuploader.stopLoadingDialog();

//       AuthenticationRepository.instance.screenRedirect();
//     } catch (e) {
//       Tfullscreenpopuploader.stopLoadingDialog();
//       Tloader.errorSnackbar(title: 'Oh Snap!', message: e.toString());
//     }
//   }
// }

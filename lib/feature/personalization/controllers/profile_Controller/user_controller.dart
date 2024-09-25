// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../utils/helpers/network_manager.dart';
// import '../../../../utils/popup/loader.dart';

// class Usercontroller extends GetxController {
//   static Usercontroller get instance => Get.find();

//   final profileloading = false.obs;
//   final userRepository = Get.put(UserRepository());
//   Rx<usermodel> user = usermodel.empty().obs;
//   final imageupload = false.obs;
//   final hidepassword = false.obs;
//   final verifyemail = TextEditingController();
//   final verifypassword = TextEditingController();
//   GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

//   @override
//   void onInit() {
//     fetchUSerRecord();
//     super.onInit();
//   }

//   Future<void> fetchUSerRecord() async {
//     try {
//       profileloading.value = true;
//       final user = await userRepository.fetchUserDetails();
//       this.user(user);
//     } catch (e) {
//       user(usermodel.empty());
//     } finally {
//       profileloading.value = false;
//     }
//   }

//   Future<void> saveUserRecord(UserCredential? userCredential) async {
//     try {
//       await fetchUSerRecord();
//       if (user.value.id.isEmpty) {
//         if (userCredential != null) {
//           final nameParts =
//               usermodel.nameParts(userCredential.user!.displayName ?? '');
//           final username = usermodel
//               .generateUsername(userCredential.user!.displayName ?? '');

//           final users = usermodel(
//               id: userCredential.user!.uid,
//               firstname: nameParts[0],
//               lastname:
//                   nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
//               username: username,
//               email: userCredential.user!.email ?? '',
//               phonenumber: userCredential.user!.phoneNumber ?? '',
//               profilePicture: userCredential.user!.photoURL ?? '');

//           await userRepository.SaveuserRecord(users);
//         }
//       }
//     } catch (e) {
//       Tloader.warningSnackBar(
//           title: 'Data Not Save',
//           message:
//               'Something went wrong while saving you information. You can re-save your data in your Profile.');
//     }
//   }

//   void deleteAccountWarningPopu() {
//     Get.defaultDialog(
//       contentPadding: EdgeInsets.all(Tsize.md),
//       title: 'Delete Account',
//       middleText:
//           'Are you sure you want to deleted your account permanetly? This action is not reversible and all of your data will be remove permanently!!!!',
//       confirm: ElevatedButton(
//         onPressed: () async => deleteUserAccount(),
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: Tsize.lg),
//           child: Text('Deleted'),
//         ),
//       ),
//       cancel: OutlinedButton(
//         onPressed: () => Navigator.of(Get.overlayContext!).pop(),
//         child: Text('Cancle'),
//       ),
//     );
//   }

//   Future<void> deleteUserAccount() async {
//     try {
//       Tfullscreenpopuploader.openLoadingDIalog(
//           'Processing', Timage.docernaimationillusstrator);

//       final auth = AuthenticationRepository.instance;
//       final provider =
//           auth.authUser!.providerData.map((e) => e.providerId).first;

//       if (provider.isNotEmpty) {
//         if (provider == 'google.com') {
//           await auth.Signinwithgoogle();
//           await auth.deletaccount();
//           Tfullscreenpopuploader.stopLoadingDialog();
//           Get.offAll(() => LoginScreen());
//         } else if (provider == 'password') {
//           Tfullscreenpopuploader.stopLoadingDialog();
//           Get.to(() => ReAuthenticateUserLoginForm());
//         }
//       }
//     } catch (e) {
//       Tfullscreenpopuploader.stopLoadingDialog();
//       Tloader.errorSnackbar(title: 'Oh Snap!', message: e.toString());
//     }
//   }

//   Future<void> reauthenticationEmmailandPasswordUser() async {
//     try {
//       Tfullscreenpopuploader.openLoadingDIalog(
//           'Processing', Timage.docernaimationillusstrator);

//       final isConnected = await NetworkManager.instance.isConnected();
//       if (!isConnected) {
//         Tfullscreenpopuploader.stopLoadingDialog();
//         return;
//       }
//       if (!reAuthFormKey.currentState!.validate()) {
//         Tfullscreenpopuploader.stopLoadingDialog();
//         return;
//       }
//       ;

//       await AuthenticationRepository.instance.reauthenticationemailandpassword(
//           verifyemail.text.trim(), verifypassword.text.trim());
//       await AuthenticationRepository.instance.deletaccount();
//       Tfullscreenpopuploader.stopLoadingDialog();

//       Get.offAll(() => const LoginScreen());
//     } catch (e) {
//       Tfullscreenpopuploader.stopLoadingDialog();
//       Tloader.errorSnackbar(title: 'Oh Snap!', message: e.toString());
//     }
//   }

//   uploadUserProfilepicture() async {
//     try {
//       final image = await ImagePicker().pickImage(
//           source: ImageSource.gallery,
//           imageQuality: 70,
//           maxHeight: 512,
//           maxWidth: 512);
//       if (image != null) {
//         imageupload.value = true;
//         final imageurl =
//             await userRepository.uploadimage('Users/Image/Profile', image);

//         Map<String, dynamic> json = {'ProfilePicture': imageurl};
//         await userRepository.UpdatesingleField(json);

//         user.value.profilePicture = imageurl;
//         user.refresh();

//         Tloader.successSnackBar(
//             title: 'Congratulation',
//             message: 'Your Profile Image has been updated!!');
//       }
//     } catch (e) {
//       Tloader.errorSnackbar(
//           title: 'Oh Snap!', message: 'Something went wrong : $e');
//     } finally {
//       imageupload.value = false;
//     }
//   }
// }

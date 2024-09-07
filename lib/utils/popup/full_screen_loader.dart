import 'package:Funtrails/common/loader/animation_loader.dart';
import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tfullscreenpopuploader {
  static void openLoadingDIalog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!)
              ? TColors.dark
              : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Tanimationloader(text: text, animation: animation)
            ],
          ),
        ),
      ),
    );
  }

  static void stopLoadingDialog() {
    if (Get.overlayContext != null) {
      Navigator.of(Get.overlayContext!).pop(); // Dismiss the loading dialog
      // Get.toNamed('/login'); // Navigate to the login screen
    }
  }
}

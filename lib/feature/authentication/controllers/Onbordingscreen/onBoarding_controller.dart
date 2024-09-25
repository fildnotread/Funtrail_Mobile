import 'package:Funtrails/feature/authentication/screens/loginpage/Signinpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class onBordingController extends GetxController {
  static onBordingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePagendicator(index) => currentPageIndex.value = index;

  void dotNavigatorclick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

void nextpage() {
  if (currentPageIndex.value == 2) {  // Assuming the last page index is 2
    Get.offAll(() => Signin()); // Navigate to Signin page when on the last onboarding page
  } else {
    int nextPage = currentPageIndex.value + 1;  // Increment the current page index
    pageController.jumpToPage(nextPage);        // Jump to the next onboarding page
  }
}


  void skippage() {
    // currentPageIndex.value = 3;
    // pageController.jumpToPage(3);
    Get.offAll(() => Signin());
  }
}

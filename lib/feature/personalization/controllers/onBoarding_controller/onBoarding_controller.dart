import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class onBordingController extends GetxController {
  static onBordingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currenPageIndex = 0.obs;

  void updatePageindicator(index) => currenPageIndex.value = index;

  void dotNavigatorclick(index) {
    currenPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextpage() {
    if (currenPageIndex.value == 2) {
      // final Storage = GetStorage();

      // Storage.write('key', false);
      Get.offAll(());
    } else {
      int page = currenPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skippage() {
    currenPageIndex.value = 3;
    pageController.jumpToPage(3);
  }
}

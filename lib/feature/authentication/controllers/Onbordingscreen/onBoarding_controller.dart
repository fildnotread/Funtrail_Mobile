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
    if (currentPageIndex.value == 2) {
      // final Storage = GetStorage();

      // Storage.write('key', false);
      Get.offAll(());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skippage() {
    currentPageIndex.value = 3;
    pageController.jumpToPage(3);
  }
}

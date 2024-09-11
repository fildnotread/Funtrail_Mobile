import 'package:Funtrails/feature/authentication/controllers/Onbordingscreen/onBoarding_controller.dart';
import 'package:Funtrails/feature/authentication/screens/loginpage/Signin.dart';
import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingScreenNext extends StatelessWidget {
  const OnBoardingScreenNext({super.key});

  @override
  Widget build(BuildContext context) {
     final controller = onBordingController.instance;
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          if (controller.pageController.hasClients) {
            final currentPageIndex = controller.currentPageIndex.value;
            final totalPages = 3; // Adjust this to the actual number of onboarding pages

            if (currentPageIndex < totalPages - 1) {
              final nextPage = currentPageIndex + 1;
              controller.pageController.animateToPage(
                nextPage,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
              controller.currentPageIndex.value = nextPage; // Update the current page index
            } else {
              Get.offAll(() => Signin()); // Navigate to Signin page when on the last onboarding page
            }
          }
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: TColors.primary,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

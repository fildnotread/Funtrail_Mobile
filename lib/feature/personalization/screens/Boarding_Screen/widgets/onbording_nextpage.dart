import 'package:Funtrails/feature/personalization/controllers/onBoarding_controller/onBoarding_controller.dart';
import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingScreenNext extends StatelessWidget {
  const OnBoardingScreenNext({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          final controller = onBordingController.instance.pageController;
          if (controller.hasClients) {
            final nextPage = controller.page!.toInt() + 1;
            if (nextPage < controller.positions.first.viewportDimension) {
              controller.animateToPage(
                nextPage,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
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

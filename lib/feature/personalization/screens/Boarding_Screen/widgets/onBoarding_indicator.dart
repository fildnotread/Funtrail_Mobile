import 'package:Funtrails/feature/personalization/controllers/onBoarding_controller/onBoarding_controller.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/device/device_utility.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';

class onBoarding_indicator extends StatelessWidget {
  const onBoarding_indicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = onBordingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,left: TSizes.defaultSpace,child: SmoothPageIndicator(
          count: 3,
          controller: controller.pageController,
          onDotClicked: controller.dotNavigatorclick,
          effect: ExpandingDotsEffect(
              activeDotColor: dark? TColors.light : TColors.dark, dotWidth: 20, dotHeight: 8),
        ));
  }
}

import 'package:Funtrails/feature/personalization/controllers/onBoarding_controller/onBoarding_controller.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
 return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () => onBordingController.instance.skippage(),
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).primaryColor, // Set the color here
        ),
        child: const Text("Skip"),
      ),
    );
  }
}

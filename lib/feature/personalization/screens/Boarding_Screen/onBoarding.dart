import 'package:Funtrails/feature/personalization/controllers/onBoarding_controller/onBoarding_controller.dart';
import 'package:Funtrails/feature/personalization/screens/Boarding_Screen/widgets/onBoarding_indicator.dart';
import 'package:Funtrails/feature/personalization/screens/Boarding_Screen/widgets/onboarding_skip.dart';
import 'package:Funtrails/feature/personalization/screens/Boarding_Screen/widgets/onbording_nextpage.dart';
import 'package:Funtrails/feature/personalization/screens/Boarding_Screen/widgets/onbording_page.dart';
import 'package:Funtrails/utils/constants/image_strings.dart';
import 'package:Funtrails/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBordingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageindicator,
            children: const [
              OnBoardingpage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingpage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingpage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const onBoarding_indicator(),
          const OnBoardingScreenNext(),
        ],
      ),
    );
  }
}

import 'package:Funtrails/feature/personalization/screens/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/Profile_icon/profile.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';


class ThomeAppbar extends StatelessWidget {
  const ThomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(Usercontroller());
    return Tappbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text('User11725112',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .apply(color: TColors.white),
              ),
          // Obx(() {
          //   if (controller.profileloading.value) {
          //     return const TshimmerEffect(width: 80, height: 15);
          //   } else {
          //     return Text(
          //       controller.user.value.fullname,
          //       style: Theme.of(context)
          //           .textTheme
          //           .headlineMedium!
          //           .apply(color: Tcolors.white),
          //     );
          //   }
          // }),
        ],
      ),
      action: [
        TProfile(
          onPressed: () => Get.to(Settingscreen()),
          iconColor: TColors.white,
        )
      ],
    );
  }
}

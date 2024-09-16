import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../image/Tcircular_image.dart';

class TprofileWidget extends StatelessWidget {
  const TprofileWidget({
    super.key,
    required this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    // final controller = Usercontroller.instance;

    return ListTile(
      // leading: Obx(() {
      //   // final networkImage = controller.user.value.profilePicture;
      //   // final image = networkImage.isNotEmpty ? networkImage : Timage.user;
      //   return Tcircularimage(
      //     image: image,
      //     height: 50,
      //     width: 50,
      //     padding: 0,
      //     isNetworking: networkImage.isNotEmpty,
      //   );
      // }),
      leading: Tcircularimage(
        image: TImages.user,
        height: 50,
        width: 50,
        padding: 0,
      ),
      // title: Obx(() => Text(
      //       controller.user.value.fullname,
      //       style: Theme.of(context)
      //           .textTheme
      //           .headlineSmall!
      //           .apply(color: TColors.white),
      //     )),
      title: Text(
        'Testing',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      // subtitle: Obx(() => Text(
      //       controller.user.value.email,
      //       style: Theme.of(context)
      //           .textTheme
      //           .bodyMedium!
      //           .apply(color: TColors.white),
      //     )),
      subtitle: Text(
        'Testinng',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: TColors.white,
        ),
      ),
    );
  }
}

import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/device/device_utility.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Tappbar extends StatelessWidget implements PreferredSizeWidget {
  const Tappbar({super.key, 
    this.title,
    this.showbackarrow = false,
    this.leadingicons,
    this.action,
    this.leadingOnpressed,
  });

  final Widget? title;
  final bool showbackarrow;
  final IconData? leadingicons;
  final List<Widget>? action;
  final VoidCallback? leadingOnpressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showbackarrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left,
                  color: dark ? TColors.white : TColors.dark,
                ),
              )
            : leadingicons != null
                ? IconButton(
                    onPressed: leadingOnpressed, icon: Icon(leadingicons))
                : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}

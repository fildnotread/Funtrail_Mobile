import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class Tsearchcontainer extends StatelessWidget {
  const Tsearchcontainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_favorite,
    this.shoebackground = true,
    this.showborder = true,
    this.ontap,
    this.padding = const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace)
  });

  final String text;
  final IconData? icon;
  final bool shoebackground, showborder;
  final void Function()? ontap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: padding,
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
              color: shoebackground
                  ? dark
                      ? TColors.dark
                      : TColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
              border: showborder ? Border.all(color: TColors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: TColors.darkerGrey,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}

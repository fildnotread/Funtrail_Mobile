import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class Tsearchcontainer extends StatelessWidget {
  const Tsearchcontainer(
      {super.key,
      required this.text,
      this.icon = Iconsax.search_normal,
      this.filter,
      this.shoebackground = true,
      this.showborder = true,
      this.ontap,
      this.padding =
          const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace)});

  final String text;
  final IconData? icon;
  final IconData? filter;
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
              Icon(icon, color: dark ? Colors.white : Colors.black),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems * 2.1,
              ),
              PopupMenuButton<int>(
                icon: Icon(
                  filter,
                  color: dark ? Colors.white : Colors.black,
                ),
                onSelected: (value) {
                  // Handle the selection
                  if (value == 1) {
                    print('Option 1 selected');
                  } else if (value == 2) {
                    print('Option 2 selected');
                  } else if (value == 3) {
                    print('Option 3 selected');
                  } else if (value == 4) {
                    print('Option 4 selected');
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text('Option 1'),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('Option 2'),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text('Option 3'),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text('Option 4'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

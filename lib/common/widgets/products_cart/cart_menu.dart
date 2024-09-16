import 'package:Funtrails/feature/personalization/screens/Favorite/Favorite_Page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class Tcarticons extends StatelessWidget {
  const Tcarticons({
    super.key,
    required this.onPressed,
    this.iconColor,
    this.counterBgColor,
    this.counterTextColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;
  final Color? counterBgColor;
  final Color? counterTextColor;

  @override
  Widget build(BuildContext context) {
    bool dark = Theme.of(context).brightness == Brightness.dark;

    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const FavoriteScreen()),
          icon: Icon(
            Iconsax.favorite_chart,
            color: iconColor ?? (dark ? TColors.white : TColors.black),
          ),
        ),
        
      ],
    );
  }
}

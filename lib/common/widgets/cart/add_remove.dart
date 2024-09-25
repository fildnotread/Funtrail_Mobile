
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../icons/Tcicle_icons.dart';

class Tproductqtuwithaddandremove extends StatelessWidget {
  const Tproductqtuwithaddandremove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(left: 30), // Add padding to the right
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Tcircularicons(
            iconss: Iconsax.minus,
            width: 32,
            height: 32,
            sizes: TSizes.md,
            colors: dark ? TColors.white : TColors.black,
            backGroundcolor: dark ? TColors.darkGrey : TColors.light,
          ),
          const SizedBox(
            width: TSizes.spaceBtwItems,
          ),
          Text('2', style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(
            width: TSizes.spaceBtwItems,
          ),
          const Tcircularicons(
            iconss: Iconsax.add,
            width: 32,
            height: 32,
            sizes: TSizes.md,
            colors: TColors.white,
            backGroundcolor: TColors.primary,
          ),
        ],
      ),
    );
  }
}

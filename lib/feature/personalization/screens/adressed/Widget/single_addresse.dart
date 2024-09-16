import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shap/containers/Tround_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class Tsingleaddresses extends StatelessWidget {
  final bool seletecaddress;
  final VoidCallback onTap; // Add a callback to notify parent on selection

  const Tsingleaddresses({
    super.key,
    required this.seletecaddress,
    required this.onTap, // Pass the callback
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap, // Trigger the callback when the user taps the address
      child: Troundedcontainer(
        width: double.infinity,
        showborder: true,
        padding: const EdgeInsets.all(TSizes.md),
        backgroundcolor: seletecaddress
            ? TColors.primary.withOpacity(0.5)
            : Colors.transparent,
        bordercolor: seletecaddress
            ? Colors.transparent
            : dark
                ? TColors.darkGrey
                : TColors.grey,
        margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
        child: Stack(
          children: [
            Positioned(
              right: 5,
              top: 0,
              child: Icon(seletecaddress ? Iconsax.tick_circle5 : null,
                  color: seletecaddress
                      ? dark
                          ? TColors.light
                          : TColors.dark.withOpacity(0.8)
                      : null),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('John Doe',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(
                  height: TSizes.sm / 2,
                ),
                const Text('(+885) 12 234 123',
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                const SizedBox(
                  height: TSizes.sm / 2,
                ),
                const Text(
                  '1234 Elm Street Apt 56B, Springfield, IL 62704 USA',
                  softWrap: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

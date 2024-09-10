import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/constants/image_strings.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class socialbtn extends StatelessWidget {
  const socialbtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // final controller = Get.put(login());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? Colors.white : TColors.black, // Adjust border color based on theme
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              // Add your onPressed action here
            },
            icon: Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: dark ? Colors.white : TColors.black, // Adjust border color based on theme
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              // Add your onPressed action here
            },
            icon: Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

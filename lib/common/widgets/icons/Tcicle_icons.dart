import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class Tcircularicons extends StatelessWidget {
  const Tcircularicons({
    super.key,
    this.width,
    this.height,
    this.sizes = TSizes.lg,
    required this.iconss,
    this.colors,
    this.backGroundcolor,
    this.onpressed,
  });

  final double? width, height, sizes;
  final IconData iconss;
  final Color? colors;
  final Color? backGroundcolor;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backGroundcolor != null
              ? backGroundcolor!
              : dark
                  ? TColors.black.withOpacity(0.9)
                  : TColors.white.withOpacity(0.9)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(iconss,color: colors, size: sizes,),
      ),
    );
  }
}

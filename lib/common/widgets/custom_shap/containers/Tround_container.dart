import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Troundedcontainer extends StatelessWidget {
  const Troundedcontainer(
      {super.key,
      this.width,
      this.height,
      this.radius = TSizes.cardRadiusLg,
      this.child,
      this.showborder = false,
      this.bordercolor = TColors.borderPrimary,
      this.backgroundcolor = TColors.white,
      this.padding,
      this.margin});

  final double? width;
  final double? height; // Corrected typo
  final double radius;
  final Widget? child;
  final bool showborder;
  final Color bordercolor;
  final Color backgroundcolor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin; // Corrected typo

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding, // Applied corrected padding
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: showborder ? Border.all(color: bordercolor) : null,
        color: backgroundcolor,
      ),
      child: child,
    );
  }
}

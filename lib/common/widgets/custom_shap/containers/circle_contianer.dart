import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';

class Tcircleercontainer extends StatelessWidget {
  const Tcircleercontainer({
    super.key,
    this.width = 400,
    this.height = 400, // Corrected typo from 'hieght' to 'height'
    this.radius = 400,
    this.padding = 0, // Corrected typo from 'paddig' to 'padding'
    this.child,
    this.backgroundcolor = TColors.primary,
    this.margin,
  });

  final double? width;
  final double? height; // Corrected typo
  final double radius;
  final double padding;
  final EdgeInsets? margin; // Corrected typo
  final Widget? child;
  final Color backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding), // Applied corrected padding
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundcolor,
      ),
      child: child,
    );
  }
}

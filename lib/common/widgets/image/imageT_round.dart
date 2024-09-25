import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TroundImage extends StatelessWidget {
  const TroundImage({
    super.key,
    this.width,
    this.height,
    required this.Imageurl,
    this.applyumageradious = true,
    this.border,
    this.backgroundcolor = TColors.light,
    this.Fit = BoxFit.contain,
    this.padding,
    this.isNetwoeking = false,
    this.onpressed,
    this.borderradius = TSizes.md,
  });
  final double? width, height;
  final String Imageurl;
  final bool applyumageradious;
  final BoxBorder? border;
  final Color? backgroundcolor;
  final double borderradius;
  final BoxFit? Fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetwoeking;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(borderradius),
        ),
        child: ClipRRect(
            borderRadius: applyumageradious
                ? BorderRadius.circular(borderradius)
                : BorderRadius.zero,
            child: Image(
              image: isNetwoeking
                  ? NetworkImage(Imageurl)
                  : AssetImage(Imageurl) as ImageProvider,
              fit: Fit,
            )),
      ),
    );
  }
}

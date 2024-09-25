import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../shimmer/Shimmer.dart';


class Tcircularimage extends StatelessWidget {
  const Tcircularimage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworking = false,
    this.overlaycolor,
    this.backgroundcolor,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworking;
  final Color? overlaycolor;
  final Color? backgroundcolor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundcolor ??
            (THelperFunctions.isDarkMode(context)
                ? TColors.black
                : TColors.white),
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: 
        // isNetworking
        //     ? CachedNetworkImage(
        //         imageUrl: image,
        //         fit: fit,
        //         color: overlaycolor,
        //         progressIndicatorBuilder: (context, url, downloadProgress) =>
        //             const TshimmerEffect(
        //           width: 55,
        //           height: 55,
        //           radius: 55,
        //         ),
        //         errorWidget: (context, url, error) => const Icon(Icons.error),
        //       )
        //     : 
            Image.asset(
                image,
                color: overlaycolor,
                fit: fit,
              ),
      ),
    );
  }
}

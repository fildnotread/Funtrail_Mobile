import 'package:Funtrails/common/widgets/text/bramd_titletext.dart';
import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/constants/enums.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class Tbrandtitlewithveerticalicons extends StatelessWidget {
  const Tbrandtitlewithveerticalicons({
    super.key,
    required this.title,
    this.maxline = 1,
    this.textcolor,
    this.iconscolor = TColors.primary,
    this.textalign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxline;
  final Color? textcolor, iconscolor;
  final TextAlign? textalign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: blandtitletext(
          title: title,
          color: textcolor,
          maxline: maxline,
          textalign: textalign,
          brandTextSizes: brandTextSizes,
        )),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: TColors.primary,
          size: TSizes.iconSm,
        )
      ],
    );
  }
}

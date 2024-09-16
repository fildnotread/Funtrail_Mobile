import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';

class blandtitletext extends StatelessWidget {
  const blandtitletext(
      {super.key,
      required this.title,
      this.maxline = 1,
      this.textalign = TextAlign.center,
      this.brandTextSizes = TextSizes.small,
      this.color});

  final String title;
  final int maxline;
  final TextAlign? textalign;
  final TextSizes brandTextSizes;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: textalign,
        maxLines: maxline,
        overflow: TextOverflow.ellipsis,
        style: brandTextSizes == TextSizes.small
            ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
            : brandTextSizes == TextSizes.medium
                ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                : brandTextSizes == TextSizes.large
                    ? Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: color)
                    : Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: color));
  }
}

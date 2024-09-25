import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../text/brand_title_withvertical.dart';
import '../text/product_title.dart';

class Tcartitems extends StatelessWidget {
  const Tcartitems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace), // Add padding here
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Tbrandtitlewithveerticalicons(title: 'Andrea Bartz'),
            const Flexible(
              child: TproductTitleText(
                title: 'An Anonymous Girl',
                maxLines: 1,
              ),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Book Mark : ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'Paper', style: Theme.of(context).textTheme.bodyLarge)
            ]))
          ],
        ),
      ),
    );
  }
}

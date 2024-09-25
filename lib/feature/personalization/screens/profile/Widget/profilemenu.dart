import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class profilemenu extends StatelessWidget {
  const profilemenu({
    super.key,
    this.iconss = Iconsax.arrow_right_34,
    this.onpressed,
    required this.title,
    // required this.value,
  });

  final IconData iconss;
  final VoidCallback? onpressed;
  // final String title, value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: TSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                // value,
                title,
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
                child: Icon(
              iconss,
              size: 18,
            )),
          ],
        ),
      ),
    );
  }
}

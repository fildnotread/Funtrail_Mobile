import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';


class TamountMethod extends StatelessWidget {
  const TamountMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal : ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$160.0 ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee : ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$3.0 ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax Fee : ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$1.0 ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Total : ',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              '\$164.0 ',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ],
    );
  }
}

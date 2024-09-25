import 'package:Funtrails/common/widgets/shimmer/Shimmer.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Tcategories_shimmerEffect extends StatelessWidget {
  const Tcategories_shimmerEffect({super.key, this.itemscount = 6});

  final int itemscount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
          itemBuilder: (_, __) {
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TshimmerEffect(
                  width: 55,
                  height: 55,
                  radius: 55,
                ),
                SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                )
              ],
            );
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) => const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
          itemCount: itemscount),
    );
  }
}

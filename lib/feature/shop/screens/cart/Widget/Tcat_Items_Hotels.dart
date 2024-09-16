import 'package:flutter/material.dart';

import '../../../../../common/widgets/cart/add_remove.dart';
import '../../../../../common/widgets/image/imageT_round.dart';
import '../../../../../common/widgets/price/productprice.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TcatItemsHotels extends StatelessWidget {
  const TcatItemsHotels({super.key, this.showaddremovebtn = true});

  final bool showaddremovebtn;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header for Hotels
        Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.md),
          child: Text(
            'Hotels',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, __) => const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          itemCount: 2, // Update itemCount as needed
          itemBuilder: (_, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TroundImage(
                    Imageurl: TImages.user, // Replace with actual image URL
                    height: 120,
                    width: 80,
                    padding: const EdgeInsets.all(TSizes.xs),
                    backgroundcolor: dark ? TColors.darkGrey : TColors.light,
                  ),
                  const SizedBox(width: TSizes.sm),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hotel Room ${index + 1} XL', // Replace with actual room type
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        const SizedBox(height: TSizes.xs),
                        Text(
                          'Details: Spacious room with king-size bed and sea view.', // Replace with actual details
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        if (showaddremovebtn) ...[
                          const SizedBox(height: TSizes.sm),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Example widget for quantity with add and remove buttons
                              Tproductqtuwithaddandremove(),
                              // Example widget for displaying price
                              Tprductprice(price: '${120 + index * 20} \$'), // Update price as needed
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

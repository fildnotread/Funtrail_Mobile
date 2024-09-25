import 'package:Funtrails/utils/constants/enums.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shap/containers/Tround_container.dart';
import '../../../../../common/widgets/image/Tcircular_image.dart';
import '../../../../../common/widgets/text/brand_title_withvertical.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';


class TbrandcardwidgetRestaurants extends StatelessWidget {
  const TbrandcardwidgetRestaurants({
    super.key,
    required this.showborder,
    this.ontap,
  });
  final bool showborder;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Troundedcontainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showborder: showborder,
        backgroundcolor: Colors.transparent,
        child: Row(
          children: [
            const Flexible(
              child: Tcircularimage(
                isNetworking: false,
                image: TImages.user,
                backgroundcolor: Colors.transparent,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Tbrandtitlewithveerticalicons(
                    title: 'Andrea Bartz',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '20 Menus',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

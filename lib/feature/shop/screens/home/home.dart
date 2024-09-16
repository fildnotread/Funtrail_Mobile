import 'package:Funtrails/common/widgets/custom_shap/containers/primary_header_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shap/containers/search_container.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'widget/home_appbar.dart';
import 'widget/promoslider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProductController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ThomeAppbar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Tsearchcontainer(
                    text: 'Explore...',
                    
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        Tsectionheading(
                          title: 'Popular Categories',
                          showactionbtn: false,
                          textcolor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                      ],
                    ),
                  ),
                  // THomecategories(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  )
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(children: [
                  const Tpromoslider(), 
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Tsectionheading(
                    title: 'News Books',
                    onpressed: (){},
                    // onpressed: () => Get.to(() => const AllproducScreen()),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  // Obx(() {
                  //   if (controller.isLoading.value)
                  //     return const VerticalProductShimmer();

                  //   if (controller.featureProducts.isEmpty) {
                  //     return Center(
                  //       child: Text(
                  //         'No Data Not Found!!',
                  //         style: Theme.of(context).textTheme.bodyMedium,
                  //       ),
                  //     );
                  //   }
                  //   return TgrideLayout(
                  //     Itemcout: controller.featureProducts.length,
                  //     Itembuiler: (_, index) => TProductCardVertical(
                  //         product: controller.featureProducts[index]),
                  //   );
                  // }),
                ]))
          ],
        ),
      ),
    );
  }
}

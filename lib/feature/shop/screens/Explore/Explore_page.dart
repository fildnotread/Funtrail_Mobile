import 'package:Funtrails/feature/personalization/screens/Favorite/Favorite_Page.dart';
import 'package:Funtrails/feature/shop/screens/Explore/widgets/Tbrandcardwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shap/containers/search_container.dart';
import '../../../../common/widgets/layout/gride_layout.dart';
import '../../../../common/widgets/products_cart/cart_menu.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  static const _itemCount = 10;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // final categories = CategoriesController.instance.featureCategories;
    return DefaultTabController(
      length: _itemCount,
      // categories.length,
      child: Scaffold(
          appBar: Tappbar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            action: [
              Tcarticons(
                onPressed: () => Get.to(const FavoriteScreen()),
                iconColor: dark ? TColors.white : TColors.black,
              )
            ],
          ),
          body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 420,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const Tsearchcontainer(
                          text: 'Search for your favorite Books...',
                          showborder: true,
                          shoebackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        Tsectionheading(
                          title: 'Owner',
                          showactionbtn: true,
                          // onpressed: () =>
                          //     Get.to(() => const allAuthorscreen()),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems / 2,
                        ),
                        TgrideLayout(
                          mainAxisExtens: 80,
                          Itemcout: 4,
                          Itembuiler: (_, index) {
                            return const Tbrandcard(
                              showborder: true,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  // bottom: TTabbar(
                  //   tabs: categories
                  //       .map((category) => Tab(child: Text(category.name)))
                  //       .toList(),
                  // ),
                ),
              ];
            },
            body: Center(
              child: Text('Tab content goes here'),
            ),
            // body: TabBarView(
            //   children: categories
            //       .map((category) => Tcategoriestab(category: category))
            //       .toList(),
            // ),
          )),
    );
  }
}

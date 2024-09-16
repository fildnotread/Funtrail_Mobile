import 'package:Funtrails/feature/shop/screens/cart/Widget/Tcat_Items_Restaurans.dart';
import 'package:Funtrails/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shap/containers/Tround_container.dart';
import '../../../../common/widgets/success_screen/sucess_screnn.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../cart/Widget/Tcat_Items_Hotels.dart';
import 'Widget/billin_addresses_section.dart';
import 'Widget/billin_payment_section copy.dart';
import 'Widget/billing_amount_section.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: Tappbar(
        showbackarrow: true,
        title: Text(
          'Order Reviews',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TcatItemsHotels(
                showaddremovebtn: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const TcatItemsRestaurans(
                showaddremovebtn: false,
              ),
              // const Tcouponcode(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              Troundedcontainer(
                padding: const EdgeInsets.all(TSizes.md),
                showborder: true,
                backgroundcolor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    TamountMethod(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TpaymetnsMethod(),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    TaddressMethod()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => suceesusscreen(
                image: TImages.successfulPaymentIcon,
                title: 'Payment Successful!',
                subtitle: 'Your books will be shipping soon!',
                onpressed: () => Get.offAll(() => const Navigationsbarmenu()),
              )),
          child: const Text('Check Out \$160'),
        ),
      ),
    );
  }
}

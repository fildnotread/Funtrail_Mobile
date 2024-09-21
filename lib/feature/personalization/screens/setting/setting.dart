import 'package:Funtrails/feature/authentication/screens/Banking/BankingPage.dart';
import 'package:Funtrails/feature/authentication/screens/loginpage/Signinpage.dart';
import 'package:Funtrails/feature/personalization/screens/Favorite/Favorite_Page.dart';
import 'package:Funtrails/feature/personalization/screens/adressed/addressed.dart';
import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shap/containers/primary_header_container.dart';
import '../../../../common/widgets/list/TprofileWidget.dart';
import '../../../../common/widgets/list/liststyle.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../shop/screens/cart/cart.dart';
import '../profile/profile.dart';

class Settingscreen extends StatelessWidget {
  const Settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  Tappbar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),

                  // Setting for Image Profile
                  TprofileWidget(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            //setting 1
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // const Tsectionheading(
                  //   title: 'Books history',
                  //   showactionbtn: false,
                  // ),

                  // const SizedBox(
                  //   height: TSizes.spaceBtwSections,
                  // ),
                  const Tsectionheading(
                    title: 'Account Setting',
                    showactionbtn: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Tseetinfmenustyle(
                    iconss: Iconsax.safe_home,
                    title: 'My Address',
                    subtitle: 'Set address for delivery',
                    ontap: () => Get.to(() => const AddressedScreen()),
                  ),
                  Tseetinfmenustyle(
                    iconss: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subtitle: 'Add, Remove and Checkout Books',
                    ontap: () => Get.to(() => const CartScreen()),
                  ),
                  Tseetinfmenustyle(
                    iconss: Iconsax.favorite_chart,
                    title: 'My Favorite',
                    subtitle: 'Favorite Hotels & Restaurants',
                    ontap: () => Get.to(() => const FavoriteScreen()),
                  ),
                  Tseetinfmenustyle(
                    iconss: Iconsax.bag_tick,
                    title: 'My Order',
                    subtitle: 'In-progress or Completed order',
                    ontap: () => Get.to(() => const CartScreen()),
                  ),
                  Tseetinfmenustyle(
                    iconss: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balances to registered account',
                    ontap: () => Get.to(const BankingScreen()),
                  ),
                   Tseetinfmenustyle(
                    iconss: Iconsax.image,
                    title: 'Notification',
                    subtitle: 'Set Notification for mor Information',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  Tseetinfmenustyle(
                    iconss: Iconsax.security_safe,
                    title: 'Account Privacy',
                    subtitle: 'Manage date and connect account',
                    ontap: () {},
                  ),

                  // setting 2
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  const Tsectionheading(
                    title: 'App setting',
                    showactionbtn: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  Tseetinfmenustyle(
                    iconss: Iconsax.document_code,
                    title: 'load Data',
                    subtitle: 'Upload data to your cloud database',
                    ontap: () {},
                  ),
                  Tseetinfmenustyle(
                    iconss: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendation based on Location',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                    ontap: () {},
                  ),
                  Tseetinfmenustyle(
                    iconss: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Search result is safe for all age',
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                    ontap: () {},
                  ),
                  Tseetinfmenustyle(
                    iconss: Iconsax.image,
                    title: 'HD image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                    ontap: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.offAll(const Signin()),
                      // AuthenticationRepository.instance.logOut(),
                      child: const Text('Log Out'),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections * 0.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

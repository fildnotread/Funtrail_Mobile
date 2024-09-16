import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';
import '../Checkout/checkout.dart';
import 'Widget/Tcat_Items_Hotels.dart';
import 'Widget/Tcat_Items_Restaurans.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tappbar(
        showbackarrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TcatItemsHotels(),
              const SizedBox(height: TSizes.spaceBtwSections), // Space between sections
              const TcatItemsRestaurans(), // Add the restaurant items widget here
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckOutScreen()),
          child: const Text('Check Out \$160'),
        ),
      ),
    );
  }
}

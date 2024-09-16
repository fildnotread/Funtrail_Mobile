import 'package:Funtrails/feature/personalization/screens/adressed/Add_New_adress.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'Widget/single_addresse.dart';

class AddressedScreen extends StatefulWidget {
  const AddressedScreen({super.key});

  @override
  _AddressedScreenState createState() => _AddressedScreenState();
}

class _AddressedScreenState extends State<AddressedScreen> {
  int selectedAddressIndex = 0; // Track the selected address index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(const AddnewAddressedScreen()),
        child: const Icon(
          Iconsax.add,
          color: TColors.white,
        ),
      ),
      appBar: Tappbar(
        showbackarrow: true,
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: List.generate(5, (index) {
              return Tsingleaddresses(
                seletecaddress: selectedAddressIndex == index,
                onTap: () {
                  setState(() {
                    selectedAddressIndex =
                        index; // Update the selected address index
                  });
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}

import 'package:Funtrails/common/widgets/appbar/appbar.dart';
import 'package:Funtrails/feature/personalization/screens/adressed/addressed.dart';
import 'package:Funtrails/feature/personalization/screens/setting/setting.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AddnewAddressedScreen extends StatelessWidget {
  const AddnewAddressedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Tappbar(
        showbackarrow: true,
        title: Text('Add new addresses'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user),
                labelText: 'Name',
              )),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.mobile),
                labelText: 'Phone Number',
              )),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.building),
                      labelText: 'Street',
                    )),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.code_circle),
                      labelText: 'Postol Code',
                    )),
                  )
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.building),
                      labelText: 'City',
                    )),
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwInputFields,
                  ),
                  Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.activity),
                      labelText: 'State',
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.global_edit),
                labelText: 'Country',
              )),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> const AddressedScreen(), child: const Text('Save')),)
            ],
          )),
        ),
      ),
    );
  }
}

import 'package:Funtrails/common/widgets/appbar/appbar.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/validators/validation.dart';

class ChnageName extends StatelessWidget {
  const ChnageName({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: Tappbar(
        showbackarrow: true,
        title: Text(
          'Change Name',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Use real name for easy verification. This name will appear on serveral pages.',
                style: Theme.of(context).textTheme.labelLarge),
            SizedBox(height: TSizes.spaceBtwSections),
            Form(
              // key: controller.UpdateUsernameFormkey,
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    // controller: controller.firstname,
                    // validator: (value) =>
                    //     TValidator.valiEmptytext('First name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                  SizedBox(height: TSizes.spaceBtwInputFields),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    // controller: controller.lastname,
                    // validator: (value) =>
                    //     TValidator.valiEmptytext('Last name', value),
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: TTexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ],
              ),
            ),
            SizedBox(height: TSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                // onPressed: () => controller.updateUserName(),
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

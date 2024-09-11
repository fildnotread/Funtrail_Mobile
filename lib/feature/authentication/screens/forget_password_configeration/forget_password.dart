
import 'package:Funtrails/feature/authentication/screens/forget_password_configeration/reset_password.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ForgetPAsswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems * 2,
            ),
            Form(
              // key: controller.forgetpasswordkey,
              child: TextFormField(
                autovalidateMode: AutovalidateMode.always,
                // controller: controller.email,
                // validator: TValidator().validateEmail,
                decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // Submit form for Password
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.offAll(restsetpasswordscreen()), child: const Text(TTexts.submit)))
          ],
        ),
      ),
    );
  }
}

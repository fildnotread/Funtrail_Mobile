import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/constants/text_strings.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class signin_from extends StatelessWidget {
  const signin_from({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // final controller = Get.put(LoginController());
    return Form(
      // key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            const Text(
              'SIGN IN',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            // Email form
            TextFormField(
              // Uncomment and configure these if needed
              // autovalidateMode: AutovalidateMode.always,
              // controller: controller.email,
              // validator: (value) => TValidator.validateEmail(value),
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText:
                    'Email', // Use TTexts.email if you have a localization setup
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: dark ? Colors.white : Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: dark ? Colors.green : Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: dark ? Colors.white : Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            //password form
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText:
                    'Password', // Use TTexts.password if you have a localization setup
                suffixIcon: Icon(Iconsax.eye_slash),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: dark ? Colors.white : Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: dark ? Colors.green : Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: dark ? Colors.white : Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),

            // Obx(
            //   () =>
            //       // password form
            //       TextFormField(
            //     // autovalidateMode: AutovalidateMode.always,
            //     // controller: controller.password,
            //     // validator: (value) => TValidator.validatePassword(value),
            //     // obscureText: controller.hidePassword.value,
            //     decoration: InputDecoration(
            //       labelText: TTexts.password,
            //       prefixIcon: const Icon(Iconsax.password_check),
            //       suffixIcon: IconButton(
            //         onPressed: () => (),
            //         // onPressed: () => controller.hidePassword.value =
            //         //     !controller.hidePassword.value,
            //         // icon: Icon(controller.hidePassword.value
            //         icon: Icon(Iconsax.eye_slash
            //             /*? Iconsax.eye_slash*/
            //             /*: Iconsax.eye*/),
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),

            // remember me form
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (Value) {}),
                    // Obx(
                    //   () => Checkbox(
                    //     value: true, onChanged: (Value) {},
                    //     // value: controller.rememberMe.value,
                    //     // onChanged: (value) => controller.rememberMe.value =
                    //     //     !controller.rememberMe.value
                    //   ),
                    // ),
                    const Text(TTexts.rememberMe)
                  ],
                ),

                //forget password form
                TextButton(
                    onPressed: () => (),
                    // Get.to(() => const /*ForgetPasswordScreen*/ ()),
                    child: const Text(TTexts.forgetPassword)),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            //sig-in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => (),
                  // onPressed: () => controller.emailAndPasswordSignIn(),
                  child: const Text(TTexts.signIn)),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            // direct to sign-up form
            SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          // Add your onPressed action here
        },
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: dark ? Colors.white : Colors.black, // Border color based on theme
          ),
          foregroundColor: dark ? Colors.white : Colors.black, // Text color based on theme
          padding: EdgeInsets.symmetric(vertical: 16.0), // Adjust padding as needed
        ),
        child: Text(
          'Create Account', // Use TTexts.createAccount if you have a localization setup
          style: TextStyle(
            color: dark ? Colors.white : Colors.black, // Text color based on theme
          ),
        ),
      ),
    ),
          ],
        ),
      ),
    );
  }
}

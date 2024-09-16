import 'package:Funtrails/feature/authentication/screens/forget_password_configeration/forget_password.dart';
import 'package:Funtrails/feature/authentication/screens/signuppage/signuppage.dart';
import 'package:Funtrails/feature/shop/screens/home/home.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/constants/text_strings.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../navigation_menu.dart';

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
                    const Text(TTexts.rememberMe)
                  ],
                ),

                //forget password form
                TextButton(
                    onPressed: () => Get.off(ForgetPasswordScreen()),
                    // Get.to(() => const /*ForgetPasswordScreen*/ ()),
                    child: Text(
                      TTexts.forgetPassword,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: dark ? Colors.white : Colors.black,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            //sig-in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.offAll(Navigationsbarmenu()),
                  // onPressed: () => controller.emailAndPasswordSignIn(),
                  child: const Text(TTexts.signIn)),
            ),
            // direct to sign-up form
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member yet? "),
                TextButton(
                  onPressed: () {
                    Get.off(
                        Signuppage()); // Navigate to Signuppage on button press
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: dark
                          ? Colors.white
                          : Colors.black, // Conditional color
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

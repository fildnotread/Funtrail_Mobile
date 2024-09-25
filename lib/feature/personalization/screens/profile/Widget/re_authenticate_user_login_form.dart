import 'package:Funtrails/common/widgets/appbar/appbar.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/validators/validation.dart';

class ReAuthenticateUserLoginForm extends StatelessWidget {
  const ReAuthenticateUserLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    // final controller = Usercontroller.instance;
    return Scaffold(
      appBar: Tappbar(
        showbackarrow: true,
        title: Text(
          'Re-Authenticate User',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
            // key: controller.reAuthFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  // controller: controller.verifyemail,
                  validator: TValidator.validateEmail,
                  decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right),
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                // Obx(
                //   () => TextFormField(
                //     obscureText: controller.hidepassword.value,
                //     autovalidateMode: AutovalidateMode.always,
                //     controller: controller.verifypassword,
                //     validator: (value) =>
                //         TValidator.valiEmptytext('Password', value),
                //     decoration: InputDecoration(
                //       labelText: TText.password,
                //       prefixIcon: Icon(Iconsax.password_check),
                //       suffixIcon: IconButton(
                //         onPressed: () => controller.hidepassword.value =
                //             !controller.hidepassword.value,
                //         icon: Icon(controller.hidepassword.value
                //             ? Iconsax.eye_slash
                //             : Iconsax.eye),
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => {},
                        // controller.reauthenticationEmmailandPasswordUser(),
                    child: const Text('Verify'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

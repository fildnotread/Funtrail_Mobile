import 'package:Funtrails/common/widget_login_signup/formdivider.dart';
import 'package:Funtrails/common/widget_login_signup/socialbtn.dart';
import 'package:Funtrails/feature/authentication/screens/loginpage/widgets/signin_form.dart';
import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/constants/text_strings.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/bg/6703fee8ef5108b0818e419b2c201bb0.jpg'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Foreground Container with rounded corners and form
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                color: dark
                    ? TColors.dark.withOpacity(0.6)
                    : TColors.white.withOpacity(0.6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), // Adjust corner radius
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30.0, bottom: 20.0),
                child: Column(
                  children: [
                    const signin_from(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Tdivider(dividertext: TTexts.orSignUpWith.capitalize!),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const socialbtn(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

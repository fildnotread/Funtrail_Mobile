import 'package:Funtrails/feature/authentication/screens/loginpage/Signinpage.dart';
import 'package:Funtrails/feature/authentication/screens/signuppage/signuppage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX package for navigation
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart'; // Update with your actual import

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

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
          // Overlay Content
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Welcome Text
                Text(
                  'Welcome to Funtrails!', // Replace with your welcome text
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: dark ? Colors.black : Colors.white,
                  ),
                ),
                Text(
                  'Your adventure begins here,', // Replace with your subtitle or description
                  style: TextStyle(
                    fontSize: 20,
                    color: dark ? Colors.black : Colors.white,
                  ),
                ),
                Text(
                  'Plan Your Journey ', // Replace with your subtitle or description
                  style: TextStyle(
                    fontSize: 20,
                    color: dark ? Colors.black : Colors.white,
                  ),
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                // Button
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () => Get.off(const Signin()),
                    child: Text(
                      TTexts.signIn,
                      style: TextStyle(
                        fontSize: 16, // Adjust as needed
                        fontWeight: FontWeight.bold, // Adjust as needed
                        color: dark ? Colors.black : Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

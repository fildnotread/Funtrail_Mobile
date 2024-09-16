import 'package:Funtrails/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../welcomescreen/welcomescreen.dart'; // Add this package for the PIN input fields

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.verificationCode,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              TTexts.codeSend,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            
            const SizedBox(
              height: TSizes.spaceBtwItems * 2,
            ),

            // Pin Code Input Fields
            PinCodeTextField(
              appContext: context,
              length: 6, // Number of input boxes
              keyboardType: TextInputType.number,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.grey[200]!,
                selectedFillColor: Colors.white,
              ),
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: true,
              onCompleted: (v) {
                print("Completed: $v"); // Do something with the code
              },
              onChanged: (value) {
                print(value);
              },
            ),

            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            
            // Submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      // You can validate the entered code here before navigation
                      Get.offAll(const Welcomescreen());
                    },
                    child: const Text(TTexts.submit)))
          ],
        ),
      ),
    );
  }
}

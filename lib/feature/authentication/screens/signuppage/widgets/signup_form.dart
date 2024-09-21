import 'package:Funtrails/feature/authentication/screens/loginpage/Signinpage.dart';
import 'package:Funtrails/feature/authentication/screens/verify/Verify_Page.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:Funtrails/utils/constants/text_strings.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPolicyChecked = false;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            const Text(
              'SIGN UP',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // Username Form
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.user),
                labelText: 'Username',
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
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            // Email Form
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: 'Email',
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
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            // Password Form
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: 'Password',
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
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            // Confirm Password Form
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: 'Confirm Password',
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
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems),

            // Checkbox and Policy Text
            Row(
              children: [
                Checkbox(
                  value: isPolicyChecked,
                  onChanged: (bool? value) {
                    if (value != null) {
                      if (value) {
                        _showPolicyPopup(context);
                      } else {
                        setState(() {
                          isPolicyChecked = false;
                        });
                      }
                    }
                  },
                ),
                GestureDetector(
                  onTap: () => _showPolicyPopup(context),
                  child: Text(
                    TTexts.privacyPolicy,
                    style: TextStyle(
                      color: dark ? Colors.white : Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),

            // Sign-Up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isPolicyChecked
                    ? () => Get.off(const VerifyScreen())
                    : null,
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            // Direct to Sign-In form
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already a member? "),
                TextButton(
                  onPressed: () {
                    Get.off(Signin());
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: dark ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to show the policy popup
// void _showPolicyPopup(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return StatefulBuilder(
//         builder: (BuildContext context, StateSetter setState) {
//           final ScrollController _scrollController = ScrollController();
//           bool hasScrolledToEnd = false;

//           void _updateScrollState() {
//             if (_scrollController.hasClients) {
//               final maxScroll = _scrollController.position.maxScrollExtent;
//               final currentScroll = _scrollController.position.pixels;
//               if (currentScroll >= maxScroll) {
//                 setState(() {
//                   hasScrolledToEnd = true;
//                 });
//               } else {
//                 setState(() {
//                   hasScrolledToEnd = false;
//                 });
//               }
//             }
//           }

//           _scrollController.addListener(_updateScrollState);

//           return AlertDialog(
//             title: const Text('Privacy Policy'),
//             content: SizedBox(
//               width: double.maxFinite,
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Expanded(
//                     child: SingleChildScrollView(
//                       controller: _scrollController,
//                       child: Text(
//                         'Please read and accept the privacy policy. By signing up, you agree to our terms and conditions.',
//                         style: const TextStyle(fontSize: 16),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   TextButton(
//                     onPressed: hasScrolledToEnd
//                         ? () {
//                             Navigator.of(context).pop();
//                             setState(() {
//                               isPolicyChecked = true;
//                             });
//                           }
//                         : null,
//                     child: const Text('Accept'),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                       setState(() {
//                         isPolicyChecked = false;
//                       });
//                     },
//                     child: const Text('Cancel'),
//                   ),
//                 ],
//               ),
//             ),
//             scrollable: true,
//           );
//         },
//       );
//     },
//   );
// }

 void _showPolicyPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          final ScrollController _scrollController = ScrollController();
          bool hasScrolledToEnd = false;

          void _updateScrollState() {
            if (_scrollController.hasClients) {
              final maxScroll = _scrollController.position.maxScrollExtent;
              final currentScroll = _scrollController.position.pixels;
              if (currentScroll >= maxScroll) {
                setState(() {
                  hasScrolledToEnd = true;
                });
              } else {
                setState(() {
                  hasScrolledToEnd = false;
                });
              }
            }
          }

          _scrollController.addListener(_updateScrollState);

          return AlertDialog(
            title: const Text('Privacy Policy'),
            content: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      child: const Text(
                        'Hotel Booking Policy:\n\n'
                        '1. Booking Confirmation: A booking confirmation will be sent to the email provided during the reservation process. Ensure that all information is correct.\n\n'
                        '2. Cancellation Policy: Cancellations made within 24 hours of booking will incur a full refund. Cancellations made less than 24 hours before the check-in date will incur a cancellation fee.\n\n'
                        '3. Check-in and Check-out: Check-in time is from 3:00 PM, and check-out time is by 11:00 AM. Early check-in or late check-out requests are subject to availability and additional charges.\n\n'
                        '4. Payment: Payment is required upon check-in unless otherwise specified. Accepted payment methods include credit/debit cards and cash.\n\n'
                        '5. Damage and Loss: Guests are responsible for any damage or loss to the hotel property. Charges will be applied accordingly.\n\n'
                        'Restaurant Policy:\n\n'
                        '1. Reservation: Reservations can be made online or by calling the restaurant. Confirmation will be sent to the email or phone number provided.\n\n'
                        '2. Cancellation: Cancellations should be made at least 2 hours before the reservation time. Late cancellations may incur a fee.\n\n'
                        '3. Arrival: Please arrive at the restaurant on time. If you are late, your reservation may be canceled, and a new table may not be available.\n\n'
                        '4. Dietary Restrictions: Please inform the restaurant of any dietary restrictions or allergies at the time of reservation.\n\n'
                        '5. Conduct: All guests are expected to behave in a respectful manner. The restaurant reserves the right to refuse service to disruptive or disrespectful patrons.',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: hasScrolledToEnd
                    ? () {
                        Navigator.of(context).pop();
                        // Handle acceptance logic here
                        // For example: setState(() { isPolicyChecked = true; });
                      }
                    : null,
                child: const Text('Accept'),
              ),
            ],
          );
        },
      );
    },
  );
}

}

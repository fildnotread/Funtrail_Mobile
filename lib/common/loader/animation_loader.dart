import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class Tanimationloader extends StatelessWidget {
  const Tanimationloader(
      {super.key,
      required this.text,
      required this.animation,
       this.showanimation = false,
      this.actionText,
      this.onactionpressed});

  final String text;
  final String animation;
  final bool showanimation;
  final String? actionText;
  final VoidCallback? onactionpressed;
  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Lottie.asset(animation, width: MediaQuery.of(context).size.width * 0.8), // Display Lottie animation
        const SizedBox(height: TSizes.defaultSpace),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ), // Text
        const SizedBox(height: TSizes.defaultSpace),

        showanimation ?
          SizedBox(
            width: 250,
            child: OutlinedButton(
              onPressed: onactionpressed,
              style: OutlinedButton.styleFrom(backgroundColor: TColors.dark),
              child: Text(
                actionText!,
                style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.light),
              ), // Text
            ), // OutlinedButton
          ) // SizedBox
        :const SizedBox(height: TSizes.defaultSpace),
      ],
    ),
  );
  }
}

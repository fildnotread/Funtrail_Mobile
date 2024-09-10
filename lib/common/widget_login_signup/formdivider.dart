import 'package:Funtrails/utils/constants/colors.dart';
import 'package:Funtrails/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Tdivider extends StatelessWidget {
  const Tdivider({
    super.key,
    required this.dividertext,
  });

  final String dividertext;

  @override
  Widget build(BuildContext context) {

    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? TColors.white : TColors.black,
          thickness: 1,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          dividertext,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
          color: dark ? TColors.white : TColors.black,
          thickness: 1,
          indent: 5,
          endIndent: 60,
        )),
      ],
    );
  }
}
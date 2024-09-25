import 'package:Funtrails/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/creditecard/creditcard.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class BankingScreen extends StatelessWidget {
  const BankingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Tappbar(
        showbackarrow: true,
        title: Text(
          'Bank Account',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: TColors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: TSizes.spaceBtwItems),
            const creditecard()
          ],
        ),
      ),
    );
  }
}
